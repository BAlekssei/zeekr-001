.class Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;
.super Ljava/lang/Object;
.source "ConnectivityControllerForPMA.java"

# interfaces
.implements Lcom/yfvet/javaIpcp/base/IpcpServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceiveFromClient(Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;[B)V
    .locals 12
    .param p1, "errorCode"    # Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;
    .param p2, "header"    # Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;
    .param p3, "payload"    # [B

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    const-string v1, "Connectivityclient init"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Ljava/lang/String;Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;)V

    .line 235
    const-string/jumbo v0, "|Operation Name:|"

    .line 236
    .local v0, "baseMessage":Ljava/lang/String;
    if-eqz p2, :cond_27

    .line 238
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0xb1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    if-ne v1, v4, :cond_4

    .line 239
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v2, :cond_3

    .line 241
    :try_start_0
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;-><init>([B)V

    .line 242
    .local v1, "notificationCyclic":Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    const-string v5, "ConnectivityControllerForPMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEventReceiveFromClient:  ESIMConnectionStatus = :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)Z

    move-result v5

    .line 246
    .local v5, "tmpSIMNetworkAvailable":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$500(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)V

    .line 247
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$600(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I

    move-result v6

    .line 248
    .local v6, "tmpSIMStatue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$700(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I

    move-result v7

    .line 250
    .local v7, "tmpSIMSignalStrength":I
    const-string v8, "ConnectivityControllerForPMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEventReceiveFromClient tmpSIMNetworkAvailable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", tmpSIMStatue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", tmpSIMSignalStrength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v8, "ConnectivityControllerForPMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEventReceiveFromClient mSIMSignalStrength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v10}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mSIMStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v10}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$900(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mSIMNetworkAvailable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v10}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$800(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v8

    if-ne v8, v7, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$900(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v8

    if-ne v8, v6, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v8

    if-eq v8, v5, :cond_2

    .line 254
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8, v4}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 255
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$802(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I

    .line 256
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8, v6}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$902(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I

    .line 257
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8, v5}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1002(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 258
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V

    .line 261
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V

    .line 263
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onESIMSignalCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "notificationCyclic":Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;
    .end local v5    # "tmpSIMNetworkAvailable":Z
    .end local v6    # "tmpSIMStatue":I
    .end local v7    # "tmpSIMSignalStrength":I
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const-string v5, "ConnectivityControllerForPMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 269
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEventReceiveFromClient:  ESIMConnectionStatus maybe the ACK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v1

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-ne v1, v3, :cond_e

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    const/16 v7, 0x15

    if-ne v1, v7, :cond_e

    .line 277
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WLANSTAStatus operationId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  OpType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_5
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-eq v1, v6, :cond_7

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-eq v1, v5, :cond_7

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 314
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 315
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEventReceiveFromClient:  SyncTCAMinformation maybe the ACK "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 282
    :cond_7
    :goto_2
    :try_start_1
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAStatus_Response;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAStatus_Response;-><init>([B)V

    .line 283
    .local v1, "statusResponse":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAStatus_Response;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 284
    const-string v2, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEventReceiveFromClient: WLANSTAStatus  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAStatus_Response;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_8
    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAStatus_Response;->getAvaliableNetwork()Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;

    move-result-object v2

    .line 287
    .local v2, "avaliableNetwork":Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;
    const/4 v7, 0x0

    .line 288
    .local v7, "isConnected":Z
    const/4 v8, 0x0

    .line 289
    .local v8, "wifiSignalLevel":I
    if-eqz v2, :cond_a

    .line 290
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 291
    const-string v9, "ConnectivityControllerForPMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WLANSTAConnect operationId WLANSTAStatus Connect Success onEventReceiveFromClient: avaliableNetwork  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)Z

    move-result v9

    move v7, v9

    .line 294
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)I

    move-result v9

    move v8, v9

    goto :goto_3

    .line 296
    :cond_a
    const/4 v7, 0x0

    .line 297
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 298
    const-string v9, "ConnectivityControllerForPMA"

    const-string v10, "WLANSTAConnect operationId WLANSTAStatus Connect Failed   "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_b
    :goto_3
    const-string v9, "ConnectivityControllerForPMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onEventReceiveFromClient isConnected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", wifiSignalLevel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v9, "ConnectivityControllerForPMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onEventReceiveFromClient mWifiConnected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v11}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1700(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", mWifiSignalLevel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v11}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1700(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v9

    if-ne v9, v7, :cond_c

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v9

    if-eq v9, v8, :cond_d

    .line 305
    :cond_c
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1702(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 306
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1802(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I

    .line 307
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v1    # "statusResponse":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAStatus_Response;
    .end local v2    # "avaliableNetwork":Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;
    .end local v7    # "isConnected":Z
    .end local v8    # "wifiSignalLevel":I
    goto :goto_4

    .line 309
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v2, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_4
    nop

    .line 320
    :cond_e
    :goto_5
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_13

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    const/16 v7, 0x19

    if-ne v1, v7, :cond_13

    .line 321
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 322
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WLANSTASan operationId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  OpType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_f
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-eq v1, v6, :cond_11

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v5, :cond_10

    goto :goto_6

    .line 338
    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 339
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEventReceiveFromClient:  SyncTCAMinformation maybe the ACK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 326
    :cond_11
    :goto_6
    :try_start_2
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAScan_Response;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAScan_Response;-><init>([B)V

    .line 327
    .local v1, "statusResponse":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAScan_Response;
    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAScan_Response;->getScanResults()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_12

    .line 328
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1902(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    goto :goto_7

    .line 330
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1902(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 332
    :goto_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1900(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiScanStateChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    .end local v1    # "statusResponse":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANSTAScan_Response;
    goto :goto_8

    .line 333
    :catch_2
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    const-string v7, "ConnectivityControllerForPMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8
    nop

    .line 345
    :cond_13
    :goto_9
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v1

    if-ne v1, v3, :cond_18

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    const/16 v7, 0x1c

    if-ne v1, v7, :cond_18

    .line 346
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 347
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WLANModeReq operationId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  OpType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_14
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v6, :cond_17

    .line 351
    :try_start_3
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANModeReq_Response;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANModeReq_Response;-><init>([B)V

    .line 352
    .local v1, "modeResponse":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANModeReq_Response;
    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANModeReq_Response;->getFunctionalControl()I

    move-result v7

    .line 353
    .local v7, "functionalControl":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 354
    const-string v8, "ConnectivityControllerForPMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEventReceiveFromClient: WLANModeReq  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANModeReq_Response;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_15
    const-string v8, "ConnectivityControllerForPMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEventReceiveFromClient WLANModeReq functionalControl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mWifiAPMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v10}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v8

    if-eq v8, v7, :cond_16

    .line 358
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2002(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I

    .line 359
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 359
    .end local v1    # "modeResponse":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANModeReq_Response;
    .end local v7    # "functionalControl":I
    goto :goto_a

    .line 361
    :catch_3
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const-string v7, "ConnectivityControllerForPMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_a
    goto :goto_b

    .line 366
    :cond_17
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 367
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEventReceiveFromClient:  SyncTCAMinformation maybe the ACK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_18
    :goto_b
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v1

    if-ne v1, v3, :cond_1d

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    const/16 v7, 0x11

    if-ne v1, v7, :cond_1d

    .line 374
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 375
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WLANMode operationId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  OpType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_19
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v5, :cond_1c

    .line 379
    :try_start_4
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANMode_Notification;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANMode_Notification;-><init>([B)V

    .line 380
    .local v1, "mode_notification":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANMode_Notification;
    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANMode_Notification;->getFunctionalControl()I

    move-result v7

    .line 381
    .restart local v7    # "functionalControl":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 382
    const-string v8, "ConnectivityControllerForPMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEventReceiveFromClient: WLANMode  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANMode_Notification;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1a
    const-string v8, "ConnectivityControllerForPMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEventReceiveFromClient WLANMode functionalControl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mWifiAPMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v10}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I

    move-result v8

    if-eq v8, v7, :cond_1b

    .line 386
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2002(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I

    .line 387
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 387
    .end local v1    # "mode_notification":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANMode_Notification;
    .end local v7    # "functionalControl":I
    goto :goto_c

    .line 389
    :catch_4
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const-string v7, "ConnectivityControllerForPMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_c
    goto :goto_d

    .line 394
    :cond_1c
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 395
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEventReceiveFromClient:  SyncTCAMinformation maybe the ACK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1d
    :goto_d
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v1

    if-ne v1, v3, :cond_28

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    const/16 v3, 0x13

    if-ne v1, v3, :cond_28

    .line 400
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 401
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WLANApConnect operationId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  OpType = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1e
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v5, :cond_22

    .line 405
    :try_start_5
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Notification;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Notification;-><init>([B)V

    .line 406
    .local v1, "mode_notification":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Notification;
    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Notification;->getConnectedDevList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 407
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Notification;->getConnectedDevList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1f

    move v2, v4

    nop

    :cond_1f
    if-eq v3, v2, :cond_21

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiApConnectStateChange(Z)V

    goto :goto_e

    .line 411
    :cond_20
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 413
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiApConnectStateChange(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 413
    .end local v1    # "mode_notification":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Notification;
    goto :goto_e

    .line 416
    :catch_5
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    const-string v2, "ConnectivityControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_e
    goto/16 :goto_10

    .line 420
    :cond_22
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v1

    if-ne v1, v6, :cond_26

    .line 422
    :try_start_6
    new-instance v1, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Response;

    invoke-direct {v1, p3}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Response;-><init>([B)V

    .line 423
    .local v1, "mode_response":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Response;
    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Response;->getConnectedDevList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 424
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    invoke-virtual {v1}, Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Response;->getConnectedDevList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_23

    move v2, v4

    nop

    :cond_23
    if-eq v3, v2, :cond_25

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 426
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiApConnectStateChange(Z)V

    goto :goto_f

    .line 428
    :cond_24
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 429
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z

    .line 430
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiApConnectStateChange(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 430
    .end local v1    # "mode_response":Lcom/yfvet/javaIpcp/bean/wlan/OpWLANAPConnDevList_Response;
    goto :goto_f

    .line 432
    :catch_6
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    const-string v2, "ConnectivityControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventReceiveFromClient: throw Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_f
    goto :goto_10

    .line 437
    :cond_26
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 438
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventReceiveFromClient:  SyncTCAMinformation maybe the ACK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 444
    :cond_27
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 445
    const-string v1, "ConnectivityControllerForPMA"

    const-string v2, "onEventReceiveFromClient: header is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_28
    :goto_10
    return-void
.end method

.method public onEventReceiveFromServer(Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;[B)V
    .locals 5
    .param p1, "errorCode"    # Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;
    .param p2, "header"    # Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;
    .param p3, "payload"    # [B

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    const-string v1, "ConnectivityServer init"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Ljava/lang/String;Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;)V

    .line 200
    const-string/jumbo v0, "|Operation Name:|"

    .line 201
    .local v0, "baseMessage":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 202
    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;->getOperationId()S

    move-result v1

    .line 203
    .local v1, "operationId":S
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "ConnectivityControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventReceiveFromServer: operationId=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v1    # "operationId":S
    :cond_0
    goto :goto_0

    .line 207
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "ConnectivityControllerForPMA"

    const-string v2, "onEventReceiveFromServer: header is NULL  !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    :goto_0
    sget-object v1, Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;->IPCP_MSG_SUCCESS:Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;

    if-ne p1, v1, :cond_5

    .line 213
    if-eqz p3, :cond_4

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/yfvet/javaIpcp/base/Utils;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    const-string v2, "ConnectivityControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventReceiveFromServer: =IPCP_MSG_SUCCESS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 219
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventReceiveFromServer: =IPCP_MSG_SUCCESS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "||payload==NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    :cond_5
    sget-object v1, Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;->IPCP_ERROR:Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;

    if-ne p1, v1, :cond_6

    .line 225
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventReceiveFromServer: IPCP_ERROR=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_6
    :goto_1
    return-void
.end method
