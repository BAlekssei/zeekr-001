.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;
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

    .line 2907
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanage(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 2910
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2911
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPassengerTmpSeekbar onProgressChanage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2914
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2915
    return-void

    .line 2917
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAcPowerState()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2918
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 2919
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 2920
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setAcPowerState(Z)V

    goto :goto_0

    .line 2922
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 2923
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$38;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V

    .line 2925
    :goto_0
    return-void
.end method
