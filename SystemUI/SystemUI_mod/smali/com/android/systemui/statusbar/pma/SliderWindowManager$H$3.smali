.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;
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

    .line 4882
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4885
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->clearSaveAppList()V

    .line 4886
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->getAppInfoNotInSaved()V

    .line 4887
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initSaveAppList(Ljava/util/ArrayList;)V

    .line 4890
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 4891
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4892
    return-void
.end method
