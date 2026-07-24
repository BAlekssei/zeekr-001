.class Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;
.super Ljava/lang/Object;
.source "SARSAEncrypt.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;


# instance fields
.field aesKey:[B

.field mEncryptKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asymmetricEncryptType()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "RSA"

    return-object v0
.end method

.method public encryptEvent([B)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # [B

    .line 45
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;->aesKey:[B

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    invoke-static {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->symmetricEncrypt([B[BLcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;->mEncryptKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->generateSymmetricKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;->aesKey:[B

    .line 58
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;->aesKey:[B

    const-string v1, "RSA"

    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->encryptAESKey(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;->mEncryptKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 61
    const/4 v1, 0x0

    return-object v1

    .line 64
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;->mEncryptKey:Ljava/lang/String;

    return-object v0
.end method

.method public symmetricEncryptType()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "AES"

    return-object v0
.end method
