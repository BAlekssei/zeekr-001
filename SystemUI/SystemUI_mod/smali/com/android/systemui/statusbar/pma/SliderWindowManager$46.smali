.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;
.super Landroid/database/ContentObserver;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->ObserveHiCarAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 5599
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 5602
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObserveHiCarAppList selfChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5604
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateHiCarAppBeanList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5605
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$46;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 5606
    return-void
.end method
