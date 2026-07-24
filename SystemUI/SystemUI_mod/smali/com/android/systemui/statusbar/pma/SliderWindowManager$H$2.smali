.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    .line 4855
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4859
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "app_current.xml"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppDatas(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4860
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4861
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4866
    :cond_0
    goto :goto_0

    .line 4863
    :catch_0
    move-exception v0

    .line 4864
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4865
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4867
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4868
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->um:Landroid/os/UserManager;

    if-eqz v0, :cond_1

    .line 4869
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->um:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4870
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 4873
    :cond_1
    return-void
.end method
