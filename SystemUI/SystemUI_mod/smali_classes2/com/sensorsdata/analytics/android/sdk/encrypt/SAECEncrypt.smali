.class Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;
.super Ljava/lang/Object;
.source "SAECEncrypt.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;


# instance fields
.field aesKey:[B

.field mEncryptKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    :try_start_0
    const-string v0, "org.spongycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "provider":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "provider":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.SAECEncrypt"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asymmetricEncryptType()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "EC"

    return-object v0
.end method

.method public encryptEvent([B)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # [B

    .line 56
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;->aesKey:[B

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    invoke-static {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->symmetricEncrypt([B[BLcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;->mEncryptKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->generateSymmetricKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;->aesKey:[B

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;->aesKey:[B

    const-string v1, "EC"

    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->encryptAESKey(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;->mEncryptKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 72
    const/4 v1, 0x0

    return-object v1

    .line 75
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;->mEncryptKey:Ljava/lang/String;

    return-object v0
.end method

.method public symmetricEncryptType()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "AES"

    return-object v0
.end method
