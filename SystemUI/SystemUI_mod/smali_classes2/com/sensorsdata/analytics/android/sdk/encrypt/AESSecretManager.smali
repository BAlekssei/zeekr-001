.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;
.super Ljava/lang/Object;
.source "AESSecretManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CBC_PKCS5_PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final SECRET_KEY_FILE:Ljava/lang/String; = "com.sensorsdata.analytics.android.sdk.other"

.field private static final TAG:Ljava/lang/String; = "SA.AESSecretManager"

.field private static final ZERO_IV:[B


# instance fields
.field private mAESSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->ZERO_IV:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager$1;

    .line 37
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;-><init>()V

    return-void
.end method

.method private generateAESKey()Ljava/lang/String;
    .locals 4

    .line 79
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 80
    .local v0, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 81
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 82
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v2, Ljava/lang/String;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 83
    .end local v0    # "keyGen":Ljavax/crypto/KeyGenerator;
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.AESSecretManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateAESKey fail, msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;
    .locals 1

    .line 55
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager$SingletonHolder;->access$100()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    return-object v0
.end method

.method private strKey2SecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "strKey"    # Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "bytes":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public decryptAES(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 133
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->ZERO_IV:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 134
    .local v1, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->strKey2SecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 135
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 136
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.AESSecretManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decryptAES fail, msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 130
    :cond_1
    :goto_0
    return-object p1
.end method

.method public encryptAES(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 108
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 112
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->ZERO_IV:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 113
    .local v1, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->strKey2SecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 115
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.AESSecretManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptAES fail, msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 109
    :cond_1
    :goto_0
    return-object p1
.end method

.method public initSecretKey(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const-string v0, "com.sensorsdata.analytics.android.sdk.other"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "secretSp":Landroid/content/SharedPreferences;
    const-string v1, "sa_sp_encrypt_secret_key"

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->generateAESKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sa_sp_encrypt_secret_key"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->mAESSecret:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    :cond_0
    return-void
.end method
