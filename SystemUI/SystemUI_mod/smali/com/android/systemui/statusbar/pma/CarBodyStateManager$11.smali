.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$11;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 4928
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$11;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingStateChange(II)V
    .locals 3
    .param p1, "function"    # I
    .param p2, "state"    # I

    .line 4931
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4932
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSettingStateChange lisener function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    :cond_0
    const/16 v0, 0x82

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x21020500

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4941
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$11;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeACCapAvail(ZI)V

    goto :goto_0

    .line 4937
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$11;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeDCCapAvail(ZI)V

    .line 4938
    nop

    .line 4944
    :goto_0
    return-void
.end method

.method public onValueChange(II)V
    .locals 0
    .param p1, "value1"    # I
    .param p2, "value2"    # I

    .line 4948
    return-void
.end method
