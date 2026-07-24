.class final enum Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SafeParcelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Binder:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Boolean:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Bundle:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Byte:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum ByteArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Double:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Float:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum IntArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Integer:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Interface:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum List:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Long:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Map:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum Parcelable:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum ParcelableArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum String:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum StringArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

.field public static final enum StringList:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 374
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Parcelable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Parcelable:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Binder"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Binder:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "StringList"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->StringList:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "List"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->List:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Bundle"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Bundle:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "ParcelableArray"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ParcelableArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "StringArray"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->StringArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "ByteArray"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ByteArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    .line 375
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Interface"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Interface:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "IntArray"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->IntArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Integer"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Integer:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Long"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Long:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Boolean"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Boolean:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Float"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Float:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Double"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Double:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "String"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->String:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Map"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Map:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const-string v1, "Byte"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Byte:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    .line 373
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Parcelable:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Binder:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->StringList:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->List:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Bundle:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ParcelableArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->StringArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ByteArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Interface:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->IntArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Integer:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Long:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Boolean:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Float:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Double:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->String:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Map:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Byte:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->$VALUES:[Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;
    return-void
.end method

.method public static fromField(Ljava/lang/reflect/Field;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 378
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 380
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ParcelableArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 382
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->StringArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 384
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->ByteArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 386
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->IntArray:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 388
    :cond_3
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Bundle:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 390
    :cond_4
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 391
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Parcelable:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 392
    :cond_5
    const-class v1, Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 393
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Binder:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 394
    :cond_6
    const-class v1, Landroid/os/IInterface;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Interface:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0

    .line 396
    :cond_7
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_18

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_8

    goto/16 :goto_7

    .line 400
    .end local p0    # "field":Ljava/lang/reflect/Field;
    :cond_8
    const-class p0, Ljava/util/Map;

    if-eq v0, p0, :cond_17

    const-class p0, Ljava/util/HashMap;

    if-ne v0, p0, :cond_9

    goto :goto_6

    .line 402
    :cond_9
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_16

    const-class p0, Ljava/lang/Integer;

    if-ne v0, p0, :cond_a

    goto :goto_5

    .line 404
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_15

    const-class p0, Ljava/lang/Boolean;

    if-ne v0, p0, :cond_b

    goto :goto_4

    .line 406
    :cond_b
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_14

    const-class p0, Ljava/lang/Long;

    if-ne v0, p0, :cond_c

    goto :goto_3

    .line 408
    :cond_c
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_13

    const-class p0, Ljava/lang/Float;

    if-ne v0, p0, :cond_d

    goto :goto_2

    .line 410
    :cond_d
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_12

    const-class p0, Ljava/lang/Double;

    if-ne v0, p0, :cond_e

    goto :goto_1

    .line 412
    :cond_e
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_11

    const-class p0, Ljava/lang/Byte;

    if-ne v0, p0, :cond_f

    goto :goto_0

    .line 414
    :cond_f
    const-class p0, Ljava/lang/String;

    if-ne v0, p0, :cond_10

    .line 415
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->String:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 416
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type is not yet usable with SafeParcelUtil: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_11
    :goto_0
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Byte:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 411
    :cond_12
    :goto_1
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Double:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 409
    :cond_13
    :goto_2
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Float:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 407
    :cond_14
    :goto_3
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Long:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 405
    :cond_15
    :goto_4
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Boolean:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 403
    :cond_16
    :goto_5
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Integer:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 401
    :cond_17
    :goto_6
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->Map:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 397
    .restart local p0    # "field":Ljava/lang/reflect/Field;
    :cond_18
    :goto_7
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_19

    .end local p0    # "field":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil;->access$100(Ljava/lang/reflect/Field;)Z

    move-result p0

    if-nez p0, :cond_19

    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->StringList:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0

    .line 398
    :cond_19
    sget-object p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->List:Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 373
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    .end local p0    # "name":Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object p0
.end method

.method public static values()[Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;
    .locals 1

    .line 373
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->$VALUES:[Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    invoke-virtual {v0}, [Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelUtil$SafeParcelType;

    return-object v0
.end method
