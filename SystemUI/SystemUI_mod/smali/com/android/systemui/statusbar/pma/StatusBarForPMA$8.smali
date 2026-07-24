.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;
.super Landroid/os/Handler;
.source "StatusBarForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1041
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;Z)V
    .locals 4
    .param p1, "result"    # Z

    .line 1079
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1081
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1082
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1083
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1084
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1044
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v1, v0, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->addNotificationUI(Landroid/view/ViewGroup;)Z

    move-result v0

    .line 1049
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1054
    .end local v0    # "result":Z
    :goto_0
    goto/16 :goto_1

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v1, v0, :cond_3

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->addNotificationCenterUI()V

    goto/16 :goto_1

    .line 1057
    :cond_3
    const/16 v0, 0x66

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/view/ViewTreeObserver$OnWindowShownListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    goto :goto_1

    .line 1059
    :cond_4
    const/16 v0, 0x67

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;)V

    goto :goto_1

    .line 1061
    :cond_5
    const/16 v0, 0x6a

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_7

    .line 1062
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1063
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;)V

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->addTaskInfoChangedListener(Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;)V

    goto :goto_1

    .line 1078
    :cond_6
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$8$ses37DV5KinmtQb6vg3tW2-oL8c;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$8$ses37DV5KinmtQb6vg3tW2-oL8c;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/zeekrlife/market/update/ZKMarketManager;->init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V

    goto :goto_1

    .line 1087
    :cond_7
    const/16 v0, 0x6b

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_8

    .line 1088
    const-string v0, "StatusBarForPMA"

    const-string v1, "AnalysisAPI init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {}, Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;->get()Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/zeekr/sdk/base/ApiReadyCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;->init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V

    .line 1091
    :cond_8
    :goto_1
    return-void
.end method
