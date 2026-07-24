.class Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;
.source "PairingCodeRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;->verifyPairingCodeRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;

.field final synthetic val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;

    .line 68
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfter()V
    .locals 0

    .line 103
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    invoke-interface {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;->onFailure(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 78
    if-nez p1, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    const-string v0, "SA.ParingCodeHttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyParingCodeRequest onResponse | response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "is_success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_3

    .line 86
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "urlString":Ljava/lang/String;
    const-string v2, "SA.ParingCodeHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyParingCodeRequest onResponse | url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;->onSuccess()V

    .line 94
    .end local v1    # "urlString":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;->onFailure(Ljava/lang/String;)V

    .line 99
    :cond_4
    :goto_0
    return-void
.end method
