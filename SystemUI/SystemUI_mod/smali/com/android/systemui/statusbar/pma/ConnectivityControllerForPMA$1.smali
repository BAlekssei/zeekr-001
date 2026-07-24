.class Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;
.super Ljava/lang/Object;
.source "ConnectivityControllerForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    invoke-static {}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshThread: run() mIPCPServiceConnectStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$200(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;->WLANModeReq()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->access$200(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;->WLANSTAStatus()V

    .line 172
    :cond_1
    return-void
.end method
