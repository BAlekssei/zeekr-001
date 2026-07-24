.class Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;
.super Ljava/lang/Object;
.source "RealRequest.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7530

.field private static final READ_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "SA.HttpRequest"

.field private static sRequestURL:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExceptionResponse(Ljava/lang/Exception;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 193
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;-><init>()V

    .line 194
    .local v0, "response":Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    iput-object p1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->exception:Ljava/lang/Exception;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->errorMsg:Ljava/lang/String;

    .line 196
    const-string v1, "SA.HttpRequest"

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v0
.end method

.method private getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "requestURL"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 123
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 127
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 129
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 130
    const-string v2, "POST"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v2

    .line 135
    .local v2, "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_1

    instance-of v3, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1

    .line 137
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 139
    :cond_1
    return-object v1
.end method

.method private getRealResponse(Ljava/net/HttpURLConnection;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    .locals 3
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 163
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;-><init>()V

    .line 165
    .local v0, "response":Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->code:I

    .line 166
    iget v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->code:I

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpUtils;->needRedirects(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->sRequestURL:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpUtils;->getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->location:Ljava/lang/String;

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->contentLength:J

    .line 171
    iget v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->code:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpUtils;->getRetString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->result:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpUtils;->getRetString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    :cond_2
    const-string v1, "SA.HttpRequest"

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v0

    .line 179
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getExceptionResponse(Ljava/lang/Exception;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    if-eqz p1, :cond_3

    .line 180
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    :cond_3
    return-object v2

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz p1, :cond_4

    .line 180
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 182
    :cond_4
    throw v1
.end method

.method private setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 3
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p2, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 150
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method getData(Ljava/lang/String;Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    .locals 4
    .param p1, "requestURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;"
        }
    .end annotation

    .line 53
    .local p2, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "SA.HttpRequest"

    const-string v1, "url:%s,\nmethod:GET"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-object p1, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->sRequestURL:Ljava/lang/String;

    .line 56
    const-string v0, "GET"

    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 57
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 58
    invoke-direct {p0, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getRealResponse(Ljava/net/HttpURLConnection;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getExceptionResponse(Ljava/lang/Exception;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    move-result-object v1

    return-object v1
.end method

.method postData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    .locals 6
    .param p1, "requestURL"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "bodyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;"
        }
    .end annotation

    .line 77
    .local p4, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    sput-object p1, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->sRequestURL:Ljava/lang/String;

    .line 81
    const-string v1, "SA.HttpRequest"

    const-string v2, "url:%s\nparams:%s\nmethod:POST"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "POST"

    invoke-direct {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 83
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 84
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const-string v2, "Content-Type"

    invoke-virtual {v1, v2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    if-eqz p4, :cond_1

    .line 89
    invoke-direct {p0, v1, p4}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 94
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 97
    :cond_2
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getRealResponse(Ljava/net/HttpURLConnection;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_3

    .line 103
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    const/4 v0, 0x0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-object v2

    .line 101
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->getExceptionResponse(Ljava/lang/Exception;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz v0, :cond_4

    .line 103
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 104
    const/4 v0, 0x0

    .line 107
    goto :goto_1

    .line 105
    :catch_2
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    return-object v2

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v0, :cond_5

    .line 103
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 104
    const/4 v0, 0x0

    .line 107
    goto :goto_3

    .line 105
    :catch_3
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    throw v1
.end method
