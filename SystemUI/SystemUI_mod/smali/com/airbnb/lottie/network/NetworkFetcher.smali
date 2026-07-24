.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private final fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0
    .param p1, "networkCache"    # Lcom/airbnb/lottie/network/NetworkCache;
    .param p2, "fetcher"    # Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 29
    iput-object p2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 30
    return-void
.end method

.method private fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/network/NetworkCache;->fetch(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 52
    .local v1, "cacheResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/airbnb/lottie/network/FileExtension;Ljava/io/InputStream;>;"
    if-nez v1, :cond_1

    .line 53
    return-object v0

    .line 56
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/network/FileExtension;

    .line 57
    .local v2, "extension":Lcom/airbnb/lottie/network/FileExtension;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/io/InputStream;

    .line 59
    .local v3, "inputStream":Ljava/io/InputStream;
    sget-object v4, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-ne v2, v4, :cond_2

    .line 60
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v4

    .local v4, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    goto :goto_0

    .line 62
    .end local v4    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :cond_2
    invoke-static {v3, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v4

    .line 64
    .restart local v4    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0

    .line 67
    :cond_3
    return-object v0
.end method

.method private fetchFromNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "fetchResult":Lcom/airbnb/lottie/network/LottieFetchResult;
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    invoke-interface {v1, p1}, Lcom/airbnb/lottie/network/LottieNetworkFetcher;->fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/LottieFetchResult;

    move-result-object v1

    move-object v0, v1

    .line 78
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->bodyByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->contentType()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "contentType":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    .line 82
    .local v3, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed fetch from network. Success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    nop

    .line 90
    if-eqz v0, :cond_1

    .line 92
    :try_start_1
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "LottieFetchResult close failed "

    invoke-static {v5, v4}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v3

    .line 85
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :cond_2
    :try_start_2
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->error()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz v0, :cond_3

    .line 92
    :try_start_3
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 95
    goto :goto_2

    .line 93
    :catch_1
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LottieFetchResult close failed "

    invoke-static {v3, v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 87
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v2, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    if-eqz v0, :cond_4

    .line 92
    :try_start_5
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    goto :goto_3

    .line 93
    :catch_3
    move-exception v3

    .line 94
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "LottieFetchResult close failed "

    invoke-static {v4, v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-object v2

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v0, :cond_5

    .line 92
    :try_start_6
    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 95
    goto :goto_5

    .line 93
    :catch_4
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "LottieFetchResult close failed "

    invoke-static {v3, v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    throw v1
.end method

.method private fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    if-nez p3, :cond_0

    .line 108
    const-string p3, "application/json"

    .line 110
    :cond_0
    const-string v0, "application/zip"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-zip"

    .line 111
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-zip-compressed"

    .line 112
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\?"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, ".lottie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "Received json response."

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 120
    .local v0, "extension":Lcom/airbnb/lottie/network/FileExtension;
    invoke-direct {p0, p1, p2, p4}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    goto :goto_1

    .line 114
    .end local v0    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    :cond_2
    :goto_0
    const-string v0, "Handling zip response."

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 116
    .restart local v0    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    invoke-direct {p0, p1, p2, p4}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromZipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    .line 120
    .local v1, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :goto_1
    nop

    .line 123
    if-eqz p4, :cond_3

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v2, p1, v0}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V

    .line 127
    :cond_3
    return-object v1
.end method

.method private fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    if-nez p3, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v1, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v0

    .line 147
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    return-object v1
.end method

.method private fromZipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    if-nez p3, :cond_0

    .line 134
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v1, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v0

    .line 137
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public fetchSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 36
    .local v0, "result":Lcom/airbnb/lottie/LottieComposition;
    if-eqz v0, :cond_0

    .line 37
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in cache. Fetching from network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    return-object v1
.end method
