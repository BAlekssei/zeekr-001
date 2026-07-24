.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$4;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Lcom/yfvet/javaIpcp/base/IpcpServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 1036
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$4;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceiveFromClient(Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;[B)V
    .locals 3
    .param p1, "errorCode"    # Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;
    .param p2, "header"    # Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;
    .param p3, "payload"    # [B

    .line 1048
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getServiceId()S

    move-result v0

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$4;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOperationId()S

    move-result v1

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/info/IpcpClientMsgHeader;->getOpType()S

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II[B)V

    .line 1051
    :cond_0
    return-void
.end method

.method public onEventReceiveFromServer(Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;[B)V
    .locals 3
    .param p1, "errorCode"    # Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;
    .param p2, "header"    # Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;
    .param p3, "payload"    # [B

    .line 1040
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;->getServiceId()S

    move-result v0

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$4;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;->getOperationId()S

    move-result v1

    invoke-virtual {p2}, Lcom/yfvet/javaIpcp/base/IpcpServiceMessageHeader;->getOpType()I

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II[B)V

    .line 1043
    :cond_0
    return-void
.end method
