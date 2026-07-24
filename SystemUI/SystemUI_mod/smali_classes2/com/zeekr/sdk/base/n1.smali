.class final Lcom/zeekr/sdk/base/n1;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekr/sdk/base/n1$b;,
        Lcom/zeekr/sdk/base/n1$c;,
        Lcom/zeekr/sdk/base/n1$d;,
        Lcom/zeekr/sdk/base/n1$e;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lsun/misc/Unsafe;

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final d:Lcom/zeekr/sdk/base/n1$e;

.field private static final e:Z

.field private static final f:Z

.field static final g:J

.field static final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/zeekr/sdk/base/n1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/zeekr/sdk/base/n1;->a:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/zeekr/sdk/base/n1;->b()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/zeekr/sdk/base/n1;->b:Lsun/misc/Unsafe;

    .line 3
    invoke-static {}, Lcom/zeekr/sdk/base/e;->a()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/zeekr/sdk/base/n1;->c:Ljava/lang/Class;

    .line 4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/zeekr/sdk/base/n1;->c(Ljava/lang/Class;)Z

    move-result v2

    .line 5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lcom/zeekr/sdk/base/n1;->c(Ljava/lang/Class;)Z

    move-result v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/zeekr/sdk/base/e;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Lcom/zeekr/sdk/base/n1$c;

    invoke-direct {v2, v0}, Lcom/zeekr/sdk/base/n1$c;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 10
    new-instance v2, Lcom/zeekr/sdk/base/n1$b;

    invoke-direct {v2, v0}, Lcom/zeekr/sdk/base/n1$b;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 16
    :cond_3
    new-instance v2, Lcom/zeekr/sdk/base/n1$d;

    invoke-direct {v2, v0}, Lcom/zeekr/sdk/base/n1$d;-><init>(Lsun/misc/Unsafe;)V

    .line 17
    :goto_1
    sput-object v2, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 20
    const-string v7, "objectFieldOffset"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/reflect/Field;

    aput-object v9, v8, v6

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    const-string v7, "getLong"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v1, v8, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    invoke-static {}, Lcom/zeekr/sdk/base/n1;->a()Ljava/lang/reflect/Field;

    move-result-object v7

    if-nez v7, :cond_5

    .line 41
    :goto_2
    move v0, v6

    goto/16 :goto_4

    .line 27
    :cond_5
    invoke-static {}, Lcom/zeekr/sdk/base/e;->b()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    const-string v7, "getByte"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v1, v8, v6

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    const-string v7, "putByte"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v6

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    const-string v7, "getInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v1, v8, v6

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    const-string v7, "putInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v6

    aput-object v3, v8, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    const-string v3, "getLong"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v6

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    const-string v3, "putLong"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v1, v7, v6

    aput-object v1, v7, v5

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    const-string v3, "copyMemory"

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v1, v7, v6

    aput-object v1, v7, v5

    aput-object v1, v7, v4

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    const-string v3, "copyMemory"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v6

    aput-object v1, v7, v5

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v4

    aput-object v1, v7, v2

    const/4 v8, 0x4

    aput-object v1, v7, v8

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_3
    move v0, v5

    goto :goto_4

    .line 37
    :catchall_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/zeekr/sdk/base/n1;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x47

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 41
    :goto_4
    sput-boolean v0, Lcom/zeekr/sdk/base/n1;->e:Z

    .line 42
    sget-object v0, Lcom/zeekr/sdk/base/n1;->b:Lsun/misc/Unsafe;

    if-nez v0, :cond_7

    .line 71
    :goto_5
    move v0, v6

    goto/16 :goto_7

    .line 46
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "objectFieldOffset"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    const-string v1, "arrayBaseOffset"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    const-string v1, "arrayIndexScale"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    const-string v1, "getInt"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v3, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    const-string v1, "putInt"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    const-string v1, "getLong"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    const-string v1, "putLong"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    aput-object v7, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    const-string v1, "getObject"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    const-string v1, "putObject"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    invoke-static {}, Lcom/zeekr/sdk/base/e;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 59
    :cond_8
    const-string v1, "getByte"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    const-string v1, "putByte"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    const-string v1, "getBoolean"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    const-string v1, "putBoolean"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    const-string v1, "getFloat"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    const-string v1, "putFloat"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    const-string v1, "getDouble"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    const-string v1, "putDouble"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    aput-object v7, v2, v5

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :goto_6
    move v0, v5

    goto :goto_7

    .line 66
    :catchall_1
    move-exception v0

    .line 70
    sget-object v1, Lcom/zeekr/sdk/base/n1;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 71
    :goto_7
    sput-boolean v0, Lcom/zeekr/sdk/base/n1;->f:Z

    .line 73
    const-class v0, [B

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/zeekr/sdk/base/n1;->g:J

    .line 77
    const-class v0, [Z

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    .line 78
    const-class v0, [Z

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->b(Ljava/lang/Class;)I

    .line 80
    const-class v0, [I

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    .line 81
    const-class v0, [I

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->b(Ljava/lang/Class;)I

    .line 83
    const-class v0, [J

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    .line 84
    const-class v0, [J

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->b(Ljava/lang/Class;)I

    .line 86
    const-class v0, [F

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    .line 87
    const-class v0, [F

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->b(Ljava/lang/Class;)I

    .line 89
    const-class v0, [D

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    .line 90
    const-class v0, [D

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->b(Ljava/lang/Class;)I

    .line 92
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->a(Ljava/lang/Class;)I

    .line 93
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/zeekr/sdk/base/n1;->b(Ljava/lang/Class;)I

    .line 95
    invoke-static {}, Lcom/zeekr/sdk/base/n1;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 96
    sget-object v1, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1, v0}, Lcom/zeekr/sdk/base/n1$e;->a(Ljava/lang/reflect/Field;)J

    .line 97
    :cond_a
    :goto_8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b

    goto :goto_9

    :cond_b
    move v5, v6

    :goto_9
    sput-boolean v5, Lcom/zeekr/sdk/base/n1;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;J)B
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 2
    sget-object v2, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    invoke-virtual {v2, p0, v0, v1}, Lcom/zeekr/sdk/base/n1$e;->b(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method static a([BJ)B
    .locals 3

    .line 5
    sget-object v0, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    sget-wide v1, Lcom/zeekr/sdk/base/n1;->g:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/zeekr/sdk/base/n1$e;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/zeekr/sdk/base/n1;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    invoke-virtual {v0, p0}, Lcom/zeekr/sdk/base/n1$e;->a(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static a()Ljava/lang/reflect/Field;
    .locals 4

    .line 7
    invoke-static {}, Lcom/zeekr/sdk/base/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    const-class v0, Ljava/nio/Buffer;

    const-string v2, "effectiveDirectAddress"

    .line 11
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    .line 12
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v2, "address"

    .line 13
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method static a(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3
    sget-object v2, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    invoke-virtual {v2, p0, v0, v1}, Lcom/zeekr/sdk/base/n1$e;->b(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 4
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/zeekr/sdk/base/n1$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a([BJB)V
    .locals 3

    .line 6
    sget-object v0, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    sget-wide v1, Lcom/zeekr/sdk/base/n1;->g:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/zeekr/sdk/base/n1$e;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method static b(Ljava/lang/Object;J)B
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 2
    sget-object v2, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    invoke-virtual {v2, p0, v0, v1}, Lcom/zeekr/sdk/base/n1$e;->b(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/zeekr/sdk/base/n1;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    invoke-virtual {v0, p0}, Lcom/zeekr/sdk/base/n1$e;->b(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static b()Lsun/misc/Unsafe;
    .locals 1

    .line 5
    :try_start_0
    new-instance v0, Lcom/zeekr/sdk/base/n1$a;

    invoke-direct {v0}, Lcom/zeekr/sdk/base/n1$a;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static b(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3
    sget-object v2, Lcom/zeekr/sdk/base/n1;->d:Lcom/zeekr/sdk/base/n1$e;

    invoke-virtual {v2, p0, v0, v1}, Lcom/zeekr/sdk/base/n1$e;->b(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 4
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/zeekr/sdk/base/n1$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zeekr/sdk/base/n1;->f:Z

    return v0
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/zeekr/sdk/base/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lcom/zeekr/sdk/base/n1;->c:Ljava/lang/Class;

    .line 7
    const-string v2, "peekLong"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    const-string v2, "pokeLong"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    const-string v2, "pokeInt"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    const-string v2, "peekInt"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v5, v7, v6

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    const-string v2, "pokeByte"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    const-string v2, "peekByte"

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    const-string v2, "pokeByteArray"

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    const-class v9, [B

    aput-object v9, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    const-string v2, "peekByteArray"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-class p0, [B

    aput-object p0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception p0

    return v1
.end method

.method static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zeekr/sdk/base/n1;->e:Z

    return v0
.end method
