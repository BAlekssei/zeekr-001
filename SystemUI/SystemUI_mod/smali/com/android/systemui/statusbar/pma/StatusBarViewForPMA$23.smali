.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1790
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 1797
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryChargingState:I

    .line 1798
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryChargingView(Z)V

    .line 1801
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugACState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4302(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 1802
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugDCState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4402(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 1803
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryStateAC()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4502(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 1804
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryStateDC()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 1805
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryFail()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 1807
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1808
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mBatteryFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPlugACState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPlugDCState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryACState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1809
    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryDCState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1808
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1812
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    const/16 v3, 0xf

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    const/16 v3, 0x18

    if-ne v1, v3, :cond_3

    .line 1814
    :cond_2
    sput v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryChargingState:I

    .line 1815
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryChargingView(Z)V

    .line 1818
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 1819
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryPlug(Z)V

    goto :goto_0

    .line 1820
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 1821
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryPlug(Z)V

    goto :goto_0

    .line 1822
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryPlug(Z)V

    goto :goto_0

    .line 1825
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryPlug(Z)V

    .line 1890
    :goto_0
    return-void
.end method
