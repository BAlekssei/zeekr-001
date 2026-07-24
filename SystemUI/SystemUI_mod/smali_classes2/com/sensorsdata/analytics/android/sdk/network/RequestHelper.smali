.class public Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
    }
.end annotation


# instance fields
.field private isRedirected:Z


# direct methods
.method private constructor <init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 8
    .param p1, "method"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "retryCount"    # I
    .param p6, "callBack"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;",
            ")V"
        }
    .end annotation

    .line 43
    .local p3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->isRedirected:Z

    .line 44
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$3;->$SwitchMap$com$sensorsdata$analytics$android$sdk$network$HttpMethod:[I

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    const-string v4, ""

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->urlHttpPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    goto :goto_0

    .line 46
    :pswitch_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->urlHttpGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    .line 47
    nop

    .line 52
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
    .param p7, "x6"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonData"    # Ljava/lang/String;
    .param p4, "retryCount"    # I
    .param p5, "callBack"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;",
            ")V"
        }
    .end annotation

    .line 63
    .local p3, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->isRedirected:Z

    .line 64
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->urlHttpPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
    .param p6, "x5"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    .line 30
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->isRedirected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->isRedirected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->urlHttpGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->getPostBody(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->getPostBodyType(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->urlHttpPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    return-void
.end method

.method private getPostBody(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 170
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->getPostBodyFormParamsMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    return-object p2

    .line 175
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPostBodyFormParamsMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 185
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 189
    .local v2, "first":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 190
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 191
    const/4 v2, 0x0

    goto :goto_1

    .line 193
    :cond_0
    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    return-object v0

    .line 204
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "first":Z
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    return-object v0
.end method

.method private getPostBodyType(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 215
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 216
    return-object v0

    .line 217
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    const-string v0, "application/json;charset=utf-8"

    return-object v0

    .line 220
    :cond_1
    return-object v0
.end method

.method private getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 148
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 149
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .line 157
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_2
    return-object p1
.end method

.method private urlHttpGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "retryCount"    # I
    .param p5, "callBack"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;",
            ")V"
        }
    .end annotation

    .line 77
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v8, p4, -0x1

    .line 78
    .local v8, "requestCount":I
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;II)V

    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method private urlHttpPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "jsonData"    # Ljava/lang/String;
    .param p5, "retryCount"    # I
    .param p6, "callBack"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;",
            ")V"
        }
    .end annotation

    .line 115
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v9, p5, -0x1

    .line 116
    .local v9, "requestCount":I
    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p5

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;II)V

    invoke-static {v10}, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
