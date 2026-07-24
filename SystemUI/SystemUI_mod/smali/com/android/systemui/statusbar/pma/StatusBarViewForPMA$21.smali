.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryLevel(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$batteryLevel:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1638
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->val$batteryLevel:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Z

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x50

    if-nez v0, :cond_2

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1647
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->val$batteryLevel:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->val$batteryLevel:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1652
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->val$batteryLevel:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1656
    :cond_3
    const-string v0, "--"

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1658
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1661
    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->val$batteryLevel:F

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->electricityLevel:F

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryChargingView(Z)V

    .line 1663
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->val$batteryLevel:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryIconColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupBatteryLevel(FI)V

    .line 1664
    return-void
.end method
