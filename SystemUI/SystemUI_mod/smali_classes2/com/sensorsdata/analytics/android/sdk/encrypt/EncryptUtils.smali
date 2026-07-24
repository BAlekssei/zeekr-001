.class Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorsDataEncrypt"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encryptAESKey(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "publicKey"    # Ljava/lang/String;
    .param p1, "aesKey"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .line 61
    invoke-static {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/EncryptUtils;->publicKeyEncrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static generateSymmetricKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;)[B
    .locals 3
    .param p0, "mode"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 55
    .local v0, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 56
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 57
    .local v1, "aesKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    return-object v2
.end method

.method private static publicKeyEncrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .param p0, "publicKey"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "SensorsDataEncrypt"

    const-string v2, "PublicKey is null."

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 81
    .local v2, "x509EncodedKeySpec":Ljava/security/spec/KeySpec;
    const-string v3, "EC"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 82
    const-string v3, "EC"

    const-string v5, "SC"

    invoke-static {v3, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 83
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    .line 84
    .local v5, "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    const-string v6, "ECIES"

    const-string v7, "SC"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 85
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 86
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    goto :goto_0

    .line 87
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :cond_1
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 88
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 89
    .local v5, "rsaPublicKey":Ljava/security/Key;
    const-string v6, "RSA/None/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 90
    .restart local v6    # "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 93
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "rsaPublicKey":Ljava/security/Key;
    :goto_0
    array-length v3, p2

    .line 94
    .local v3, "contentLen":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 100
    .local v5, "offSet":I
    const/16 v7, 0xf5

    .line 101
    .local v7, "MAX_ENCRYPT_BLOCK":I
    :goto_1
    sub-int v8, v3, v5

    if-lez v8, :cond_3

    .line 102
    sub-int v8, v3, v5

    if-le v8, v7, :cond_2

    .line 103
    invoke-virtual {v6, p2, v5, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    .local v8, "cache":[B
    goto :goto_2

    .line 105
    .end local v8    # "cache":[B
    :cond_2
    sub-int v8, v3, v5

    invoke-virtual {v6, p2, v5, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    .line 107
    .restart local v8    # "cache":[B
    :goto_2
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v4, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 108
    add-int/2addr v5, v7

    goto :goto_1

    .line 110
    .end local v8    # "cache":[B
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 111
    .local v8, "encryptedData":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 112
    new-instance v9, Ljava/lang/String;

    invoke-static {v8}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 113
    .end local v0    # "keyBytes":[B
    .end local v2    # "x509EncodedKeySpec":Ljava/security/spec/KeySpec;
    .end local v3    # "contentLen":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "offSet":I
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "MAX_ENCRYPT_BLOCK":I
    .end local v8    # "encryptedData":[B
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    return-object v1
.end method

.method static symmetricEncrypt([B[BLcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # [B
    .param p1, "contentBytes"    # [B
    .param p2, "mode"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;

    .line 128
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 134
    .local v1, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 135
    .local v2, "ivBytes":[B
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->algorithm:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 137
    .local v3, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v4, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SymmetricEncryptMode;->transformation:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 138
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v4, v5, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 140
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 141
    .local v5, "encryptedBytes":[B
    array-length v6, v2

    array-length v7, v5

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 142
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 145
    .local v7, "cipherMessage":[B
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 146
    .end local v1    # "random":Ljava/security/SecureRandom;
    .end local v2    # "ivBytes":[B
    .end local v3    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "encryptedBytes":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "cipherMessage":[B
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 149
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0

    .line 129
    :cond_1
    :goto_0
    return-object v0
.end method
