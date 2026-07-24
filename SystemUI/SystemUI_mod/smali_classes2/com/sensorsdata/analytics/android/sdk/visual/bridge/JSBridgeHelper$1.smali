.class Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;
.super Ljava/lang/Object;
.source "JSBridgeHelper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->addSAJSListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    .line 46
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveJSMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 6
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "view":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "callType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "callType":Ljava/lang/String;
    const-string v2, "getJSVisualProperties"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "message_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "messageId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->access$000(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;

    .line 56
    .local v3, "function":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;
    if-eqz v3, :cond_0

    .line 57
    const-string v4, "data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 58
    .local v4, "dataObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;->onCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "callType":Ljava/lang/String;
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "function":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;
    .end local v4    # "dataObj":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
