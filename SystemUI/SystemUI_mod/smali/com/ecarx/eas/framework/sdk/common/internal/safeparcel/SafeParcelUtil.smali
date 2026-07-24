.class public final Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;
    }
.end annotation


# direct methods
.method static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 32
    nop

    .end local p0    # "x0":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getListItemClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Field;)Z
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 32
    nop

    .end local p0    # "x0":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getUseValueParcel(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static createObject(Ljava/lang/Class;Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 39
    .local p0, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    nop

    .end local p0    # "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;

    .line 43
    nop

    .end local p1    # "in":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->readObject(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object v0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t construct object"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 46
    :catch_1
    move-exception p0

    .line 47
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "createObject() requires a default constructor."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 159
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .end local p0    # "clazz":Ljava/lang/Class;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .restart local p0    # "clazz":Ljava/lang/Class;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getCreator(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 125
    :try_start_0
    const-string v0, "CREATOR"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATOR in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local p0    # "clazz":Ljava/lang/Class;
    const-string p0, " is not accessible"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .restart local p0    # "clazz":Ljava/lang/Class;
    :catch_1
    move-exception v0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is an Parcelable without CREATOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCreator(Ljava/lang/reflect/Field;)Landroid/os/Parcelable$Creator;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 113
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 117
    :cond_0
    if-eqz p0, :cond_1

    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getCreator(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not an Parcelable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFieldId(Ljava/lang/reflect/Field;)I
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 173
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    .line 174
    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;->value()I

    move-result p0

    return p0

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static getListItemClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 145
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getSubClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 148
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 149
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 150
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 151
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 152
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 155
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMayNull(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 182
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    .line 183
    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;->mayNull()Z

    move-result p0

    return p0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static getSubClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 136
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    .line 137
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;->subClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;

    if-eq v0, v1, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;->subClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUseValueParcel(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 164
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    .line 165
    if-eqz p0, :cond_0

    .line 166
    invoke-interface {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;->useValueParcel()Z

    move-result p0

    return p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static isSafeParceledField(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 192
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static readField(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;Ljava/lang/reflect/Field;I)V
    .locals 12
    .param p0, "object"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "header"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 265
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    nop

    .line 268
    const-class v2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    .line 269
    const-class v2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;

    invoke-interface {v2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;->versionCode()J

    move-result-wide v5

    goto :goto_0

    .line 271
    :cond_0
    move-wide v5, v3

    :goto_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$1;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$safeparcel$SafeParcelUtil$SafeParcelType:[I

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->fromField(Ljava/lang/reflect/Field;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    .line 366
    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p3    # "header":I
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->fromField(Ljava/lang/reflect/Field;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :pswitch_0
    goto/16 :goto_7

    .line 361
    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p3    # "header":I
    :pswitch_1
    nop

    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p3    # "header":I
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    goto/16 :goto_7

    .line 358
    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p3    # "header":I
    :pswitch_2
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    goto/16 :goto_7

    .line 355
    :pswitch_3
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readFloat(Landroid/os/Parcel;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    goto/16 :goto_7

    .line 352
    :pswitch_4
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readBool(Landroid/os/Parcel;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    goto/16 :goto_7

    .line 344
    :pswitch_5
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v10

    .line 345
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    cmp-long v2, v10, v5

    if-lez v2, :cond_1

    .line 346
    const-string v2, "SafeParcel"

    const-string v3, "Version code of %s (%d) is older than object read (%d)."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    goto/16 :goto_7

    .line 336
    :pswitch_6
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    .line 337
    cmp-long v3, v5, v3

    if-eqz v3, :cond_2

    int-to-long v3, v2

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 338
    const-string v3, "SafeParcel"

    const-string v4, "Version code of %s (%d) is older than object read (%d)."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v7

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    goto/16 :goto_7

    .line 333
    :pswitch_7
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readIntArray(Landroid/os/Parcel;I)[I

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    goto/16 :goto_7

    .line 330
    :pswitch_8
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readByteArray(Landroid/os/Parcel;I)[B

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    goto/16 :goto_7

    .line 327
    :pswitch_9
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    goto/16 :goto_7

    .line 324
    :pswitch_a
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getCreator(Ljava/lang/reflect/Field;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readParcelableArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    goto/16 :goto_7

    .line 313
    :pswitch_b
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getSubClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_4

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getUseValueParcel(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 318
    :cond_3
    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readBundle(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    .line 316
    :cond_4
    :goto_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readBundle(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 320
    :goto_2
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    goto/16 :goto_7

    .line 307
    :pswitch_c
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getSubClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 308
    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readMap(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 309
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    goto/16 :goto_7

    .line 296
    :pswitch_d
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getListItemClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_6

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getUseValueParcel(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 301
    :cond_5
    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getCreator(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readParcelableList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_4

    .line 299
    :cond_6
    :goto_3
    invoke-static {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readList(Landroid/os/Parcel;ILjava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 303
    :goto_4
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    goto :goto_7

    .line 293
    :pswitch_e
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    goto :goto_7

    .line 279
    :pswitch_f
    nop

    .line 280
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_5
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    .line 282
    :try_start_0
    const-string v6, "asInterface"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    .line 283
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 282
    invoke-virtual {p2, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .line 285
    goto :goto_6

    .line 286
    :catch_0
    move-exception v5

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 289
    :cond_7
    move v1, v9

    :goto_6
    if-eqz v1, :cond_8

    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p3    # "header":I
    goto :goto_7

    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p3    # "header":I
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field has broken interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_10
    invoke-static {p1, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    goto :goto_7

    .line 273
    :pswitch_11
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getCreator(Ljava/lang/reflect/Field;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    nop

    .line 368
    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p3    # "header":I
    :goto_7
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 369
    .end local p2    # "field":Ljava/lang/reflect/Field;
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readObject(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;)V
    .locals 11
    .param p0, "object"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 74
    if-eqz p0, :cond_7

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 78
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 80
    invoke-static {v8}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->isSafeParceledField(Ljava/lang/reflect/Field;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    invoke-static {v8}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getFieldId(Ljava/lang/reflect/Field;)I

    move-result v9

    .line 82
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    .line 85
    invoke-virtual {v1, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 83
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x3

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "Field number %d is used twice in %s for fields %s and %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 91
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_5

    .line 92
    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v5

    .line 93
    invoke-static {v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v6

    .line 94
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 95
    if-nez v7, :cond_4

    .line 96
    const-string v7, "SafeParcel"

    const-string v8, "Unknown field id %d in %s, skipping."

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p1, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->skip(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 100
    :cond_4
    :try_start_0
    invoke-static {p0, p1, v7, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->readField(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;Ljava/lang/reflect/Field;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_3

    .line 101
    :catch_0
    move-exception v7

    .line 102
    const-string v8, "SafeParcel"

    const-string v9, "Error reading field: %d in %s, skipping."

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-static {p1, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;->skip(Landroid/os/Parcel;I)V

    .line 106
    goto :goto_3

    .line 107
    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .end local p1    # "parcel":Landroid/os/Parcel;
    if-gt p0, v0, :cond_6

    .line 110
    return-void

    .line 108
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Overread allowed size end="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static writeField(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;Ljava/lang/reflect/Field;I)V
    .locals 5
    .param p0, "object"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 196
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getFieldId(Ljava/lang/reflect/Field;)I

    move-result v0

    .line 197
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getMayNull(Ljava/lang/reflect/Field;)Z

    move-result v1

    .line 198
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    .line 199
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    sget-object v3, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$1;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$safeparcel$SafeParcelUtil$SafeParcelType:[I

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->fromField(Ljava/lang/reflect/Field;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p3    # "flags":I
    goto/16 :goto_1

    .line 256
    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    :pswitch_0
    nop

    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, v0, p0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 253
    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    :pswitch_1
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-static {p1, v0, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/lang/Double;)V

    .line 254
    goto/16 :goto_1

    .line 250
    :pswitch_2
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-static {p1, v0, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/lang/Float;)V

    .line 251
    goto/16 :goto_1

    .line 247
    :pswitch_3
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {p1, v0, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/lang/Boolean;)V

    .line 248
    goto/16 :goto_1

    .line 244
    :pswitch_4
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-static {p1, v0, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 245
    goto/16 :goto_1

    .line 241
    :pswitch_5
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p1, v0, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 242
    goto/16 :goto_1

    .line 238
    :pswitch_6
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-static {p1, v0, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;I[IZ)V

    .line 239
    goto/16 :goto_1

    .line 235
    :pswitch_7
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-static {p1, v0, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;I[BZ)V

    .line 236
    goto/16 :goto_1

    .line 232
    :pswitch_8
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-static {p1, v0, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 233
    goto/16 :goto_1

    .line 229
    .restart local p3    # "flags":I
    :pswitch_9
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .end local p3    # "flags":I
    invoke-static {p1, v0, v3, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 230
    goto :goto_1

    .line 226
    .restart local p3    # "flags":I
    :pswitch_a
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {p1, v0, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 227
    goto :goto_1

    .line 223
    :pswitch_b
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {p1, v0, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/util/Map;Z)V

    .line 224
    goto :goto_1

    .line 214
    :pswitch_c
    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getListItemClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_1

    const-class v4, Landroid/os/Parcelable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->getUseValueParcel(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {p1, v0, v3, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/util/List;IZ)V

    .line 220
    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {p1, v0, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILjava/util/List;Z)V

    goto :goto_1

    .line 211
    :pswitch_d
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {p1, v0, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 212
    goto :goto_1

    .line 208
    :pswitch_e
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {p1, v0, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 209
    goto :goto_1

    .line 205
    :pswitch_f
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {p1, v0, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 206
    goto :goto_1

    .line 202
    :pswitch_10
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-static {p1, v0, v3, p3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->write(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 203
    nop

    .line 259
    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p3    # "flags":I
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 261
    .end local p2    # "field":Ljava/lang/reflect/Field;
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeObject(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;I)V
    .locals 9
    .param p0, "object"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    if-eqz p0, :cond_3

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->writeObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    .line 58
    :goto_0
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 60
    invoke-static {v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->isSafeParceledField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    :try_start_0
    invoke-static {p0, p1, v5, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->writeField(Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;Landroid/os/Parcel;Ljava/lang/reflect/Field;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_2

    .line 63
    :catch_0
    move-exception v5

    .line 64
    const-string v6, "SafeParcel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error writing field: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 70
    .end local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .end local p2    # "flags":I
    :cond_2
    invoke-static {p1, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 71
    .end local p1    # "parcel":Landroid/os/Parcel;
    return-void

    .line 55
    .restart local p0    # "object":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
