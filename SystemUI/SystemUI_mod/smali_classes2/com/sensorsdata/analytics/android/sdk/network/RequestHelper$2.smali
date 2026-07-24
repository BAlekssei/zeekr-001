.class Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;
.super Ljava/lang/Object;
.source "RequestHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->urlHttpPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

.field final synthetic val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

.field final synthetic val$headerMap:Ljava/util/Map;

.field final synthetic val$jsonData:Ljava/lang/String;

.field final synthetic val$paramsMap:Ljava/util/Map;

.field final synthetic val$requestCount:I

.field final synthetic val$retryCount:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    .line 116
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$paramsMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$jsonData:Ljava/lang/String;

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$headerMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    iput p7, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$retryCount:I

    iput p8, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$requestCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 119
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;-><init>()V

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$paramsMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$jsonData:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->access$300(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$paramsMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$jsonData:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->access$400(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$headerMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/network/RealRequest;->postData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;

    move-result-object v0

    .line 120
    .local v0, "response":Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;
    iget v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->code:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->code:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->access$100(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->code:I

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpUtils;->needRedirects(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->access$102(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Z)Z

    .line 126
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iget-object v4, v0, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->location:Ljava/lang/String;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$paramsMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$jsonData:Ljava/lang/String;

    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$headerMap:Ljava/util/Map;

    iget v8, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$retryCount:I

    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    invoke-static/range {v3 .. v9}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->access$500(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    goto :goto_1

    .line 128
    :cond_1
    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$requestCount:I

    if-eqz v1, :cond_2

    .line 129
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->this$0:Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$paramsMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$jsonData:Ljava/lang/String;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$headerMap:Ljava/util/Map;

    iget v7, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$requestCount:I

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    invoke-static/range {v2 .. v8}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;->access$500(Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;->onError(Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;)V

    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$2;->val$callBack:Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;->onSuccess(Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;)V

    .line 136
    :cond_4
    :goto_1
    return-void
.end method
