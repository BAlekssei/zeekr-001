.class public Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

.field private headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

.field private httpUrl:Ljava/lang/String;

.field private jsonData:Ljava/lang/String;

.field private paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retryCount:I


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;
    .param p2, "url"    # Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->retryCount:I

    .line 234
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->httpMethod:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    .line 235
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->httpUrl:Ljava/lang/String;

    .line 236
    return-void
.end method


# virtual methods
.method public callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
    .locals 0
    .param p1, "callBack"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    .line 254
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    .line 255
    return-object p0
.end method

.method public execute()V
    .locals 17

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->httpMethod:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->POST:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->paramsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 265
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iget-object v3, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->httpUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->jsonData:Ljava/lang/String;

    iget-object v5, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->headerMap:Ljava/util/Map;

    iget v6, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->retryCount:I

    iget-object v7, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;)V

    goto :goto_0

    .line 267
    :cond_0
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iget-object v10, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->httpMethod:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    iget-object v11, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->httpUrl:Ljava/lang/String;

    iget-object v12, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->paramsMap:Ljava/util/Map;

    iget-object v13, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->headerMap:Ljava/util/Map;

    iget v14, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->retryCount:I

    iget-object v15, v0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$1;)V

    .line 269
    :goto_0
    return-void
.end method

.method public header(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;"
        }
    .end annotation

    .line 249
    .local p1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->headerMap:Ljava/util/Map;

    .line 250
    return-object p0
.end method

.method public jsonData(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->jsonData:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public params(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;"
        }
    .end annotation

    .line 239
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->paramsMap:Ljava/util/Map;

    .line 240
    return-object p0
.end method

.method public retryCount(I)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;
    .locals 0
    .param p1, "retryCount"    # I

    .line 259
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->retryCount:I

    .line 260
    return-object p0
.end method
