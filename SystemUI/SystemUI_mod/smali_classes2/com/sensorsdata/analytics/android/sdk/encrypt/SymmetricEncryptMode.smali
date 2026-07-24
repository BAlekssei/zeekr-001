.class final enum Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;
.super Ljava/lang/Enum;
.source "SymmetricEncryptMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

.field public static final enum AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

.field public static final enum SM4:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;


# instance fields
.field public algorithm:Ljava/lang/String;

.field public transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    const-string v1, "AES"

    const-string v2, "AES"

    const-string v3, "AES/CBC/PKCS5Padding"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    .line 23
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    const-string v1, "SM4"

    const-string v2, "SM4"

    const-string v3, "SM4/CBC/PKCS5Padding"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->SM4:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->SM4:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->algorithm:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->transformation:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    return-object v0
.end method

.method public static values()[Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;
    .locals 1

    .line 20
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    invoke-virtual {v0}, [Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    return-object v0
.end method
