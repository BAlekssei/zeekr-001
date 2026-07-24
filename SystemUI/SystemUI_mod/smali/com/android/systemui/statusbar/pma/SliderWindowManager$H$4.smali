.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$4;
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

    .line 4902
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$4;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4906
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$4;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$4;->this$1:Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initHicarAppList(Ljava/util/ArrayList;)V

    .line 4915
    return-void
.end method
