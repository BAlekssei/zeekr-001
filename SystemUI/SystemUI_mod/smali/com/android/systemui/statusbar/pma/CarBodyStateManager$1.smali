.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;
.super Landroid/database/ContentObserver;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkSTRMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 747
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 750
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSTRMode,onChange selfChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryTemp(ZI)V

    .line 757
    return-void
.end method
