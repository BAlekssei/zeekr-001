.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;
.super Ljava/lang/Object;
.source "SensorsDataEncrypt.java"


# static fields
.field private static final KEY_VERSION_DEFAULT:I = 0x0

.field private static final SP_SECRET_KEY:Ljava/lang/String; = "secret_key"

.field private static final TAG:Ljava/lang/String; = "SA.SensorsDataEncrypt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncryptListener:Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

.field private mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistentSecretKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    .line 47
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mListeners:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SARSAEncrypt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isECEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAECEncrypt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method private gzipEventData(Ljava/lang/String;)[B
    .locals 4
    .param p1, "record"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    move-object v1, v0

    .line 229
    .local v1, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 232
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 233
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    nop

    .line 240
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 233
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 238
    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 234
    :catch_1
    move-exception v2

    .line 235
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    nop

    .line 238
    if-eqz v1, :cond_0

    .line 240
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    goto :goto_1

    .line 241
    :catch_2
    move-exception v3

    .line 242
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 236
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 238
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_1

    .line 240
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 243
    goto :goto_3

    .line 241
    :catch_3
    move-exception v2

    .line 242
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 245
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v0
.end method

.method public static isECEncrypt()Z
    .locals 1

    .line 62
    :try_start_0
    const-string v0, "org.spongycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private isEncryptorTypeNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;)Z
    .locals 1
    .param p1, "saEncryptListener"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    .line 307
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 307
    :goto_1
    return v0
.end method

.method private isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z
    .locals 1
    .param p1, "secreteKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 303
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->readAppKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->readLocalKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    return-object v0
.end method

.method private readAppKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .locals 8

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "publicKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 267
    .local v1, "keyVersion":I
    const/4 v2, 0x0

    .line 268
    .local v2, "symmetricEncryptType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 269
    .local v3, "asymmetricEncryptType":Ljava/lang/String;
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    invoke-interface {v4}, Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v4

    .line 270
    .local v4, "rsaPublicKeyVersion":Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    if-eqz v4, :cond_0

    .line 271
    iget-object v0, v4, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    .line 272
    iget v1, v4, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    .line 273
    iget-object v2, v4, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    .line 274
    iget-object v3, v4, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    .line 276
    :cond_0
    const-string v5, "SA.SensorsDataEncrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAppKey [key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,v = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ,symmetricEncryptType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,asymmetricEncryptType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private readLocalKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "publicKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 288
    .local v1, "keyVersion":I
    const/4 v2, 0x0

    .line 289
    .local v2, "symmetricEncryptType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 290
    .local v3, "asymmetricEncryptType":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v4

    const-string v5, "secret_key"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "secretKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 292
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "key"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v6, "version"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 295
    const-string v6, "symmetricEncryptType"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    const-string v6, "asymmetricEncryptType"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "SA.SensorsDataEncrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLocalKey [key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,v = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ,symmetricEncryptType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,asymmetricEncryptType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public checkPublicSecretKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "symmetricEncryptType"    # Ljava/lang/String;
    .param p4, "asymmetricEncryptType"    # Ljava/lang/String;

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    .line 183
    .local v0, "secreteKey":Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->disposeECPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->disposeECPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    .line 188
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bc6\u94a5\u9a8c\u8bc1\u4e0d\u901a\u8fc7\uff0c\u6240\u9009\u5bc6\u94a5\u7c7b\u578b\u4e0e App \u7aef\u5bc6\u94a5\u7c7b\u578b\u4e0d\u76f8\u540c\u3002\u6240\u9009\u5bc6\u94a5\u5bf9\u79f0\u7b97\u6cd5\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u975e\u5bf9\u79f0\u7b97\u6cd5\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cApp \u7aef\u5bc6\u94a5\u5bf9\u79f0\u7b97\u6cd5\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u975e\u5bf9\u79f0\u7b97\u6cd5\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_2
    :goto_0
    const-string v1, "\u5bc6\u94a5\u9a8c\u8bc1\u901a\u8fc7\uff0c\u6240\u9009\u5bc6\u94a5\u4e0e App \u7aef\u5bc6\u94a5\u76f8\u540c"

    return-object v1

    .line 197
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bc6\u94a5\u9a8c\u8bc1\u4e0d\u901a\u8fc7\uff0c\u6240\u9009\u5bc6\u94a5\u4e0e App \u7aef\u5bc6\u94a5\u4e0d\u76f8\u540c\u3002\u6240\u9009\u5bc6\u94a5\u7248\u672c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cApp \u7aef\u5bc6\u94a5\u7248\u672c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    :cond_4
    :goto_1
    const-string v1, "\u5bc6\u94a5\u9a8c\u8bc1\u4e0d\u901a\u8fc7\uff0cApp \u7aef\u5bc6\u94a5\u4e3a\u7a7a"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 200
    .end local v0    # "secreteKey":Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 203
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public disposeECPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EC:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    :goto_0
    return-object p1
.end method

.method public encryptTrackData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 80
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-object p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mEncryptListener:Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isMatchEncryptType(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mEncryptListener:Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mEncryptListener:Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    if-nez v0, :cond_2

    .line 90
    return-object p1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    .line 95
    .local v0, "publicKey":Ljava/lang/String;
    const-string v1, "EC:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mEncryptListener:Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    invoke-interface {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "encryptedKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    return-object p1

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mEncryptListener:Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->gzipEventData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->encryptEvent([B)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "encryptData":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    return-object p1

    .line 109
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v3, "dataJson":Lorg/json/JSONObject;
    const-string v4, "ekey"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v4, "pkv"

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    iget v5, v5, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v4, "payloads"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v3

    .line 114
    .end local v0    # "publicKey":Ljava/lang/String;
    .end local v1    # "encryptedKey":Ljava/lang/String;
    .end local v2    # "encryptData":Ljava/lang/String;
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 117
    .end local v0    # "ex":Ljava/lang/Exception;
    return-object p1
.end method

.method getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    .locals 3
    .param p1, "secreteKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 312
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    .line 314
    .local v1, "listener":Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isMatchEncryptType(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    return-object v1

    .line 317
    .end local v1    # "listener":Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    :cond_0
    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method isMatchEncryptType(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z
    .locals 2
    .param p1, "listener"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    .param p2, "secreteKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 167
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isEncryptorTypeNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0
.end method

.method public isPublicSecretKeyNull()Z
    .locals 2

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    .line 152
    .local v0, "secreteKey":Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 153
    .end local v0    # "secreteKey":Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public saveSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V
    .locals 4
    .param p1, "secreteKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 127
    :try_start_0
    const-string v0, "SA.SensorsDataEncrypt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveSecretKey] publicKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v0

    .line 130
    .local v0, "encryptListener":Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    invoke-interface {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;->saveSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V

    .line 134
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v1

    const-string v2, "secret_key"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v1

    const-string v2, "secret_key"

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "encryptListener":Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    :cond_1
    :goto_0
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
