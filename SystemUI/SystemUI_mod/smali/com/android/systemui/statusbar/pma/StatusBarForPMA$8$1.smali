.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8$1;
.super Ljava/lang/Object;
.source "StatusBarForPMA.java"

# interfaces
.implements Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;

    .line 1063
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTaskAdd(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    .locals 0
    .param p1, "appTaskInfo"    # Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 1071
    return-void
.end method

.method public onAppTaskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->changedAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 1068
    return-void
.end method

.method public onAppTaskRemove(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    .locals 2
    .param p1, "appTaskInfo"    # Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->removeTask(Ljava/lang/String;)V

    .line 1075
    return-void
.end method
