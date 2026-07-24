.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;
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

.field final synthetic val$appDatas:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    .line 4838
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;->val$appDatas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4842
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;->val$appDatas:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->saveAppDatas(Ljava/util/ArrayList;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4847
    goto :goto_0

    .line 4843
    :catch_0
    move-exception v0

    .line 4844
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4845
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveAppDatas error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
