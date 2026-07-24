.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->onAdjustableTempChange(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 2885
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanage(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 2888
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2889
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDriverTmpSeekbar onProgressChanage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2892
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2893
    return-void

    .line 2895
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2896
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 2897
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2898
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setAcPowerState(Z)V

    goto :goto_0

    .line 2900
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 2901
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$37;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V

    .line 2903
    :goto_0
    return-void
.end method
