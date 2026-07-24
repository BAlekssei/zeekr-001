.class public Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityControllerForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EolBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ConnectivityControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v1, "ACTION_CLEAR_CONNET_LIST_CONTROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->optConnectList()V

    .line 134
    :cond_0
    return-void
.end method
