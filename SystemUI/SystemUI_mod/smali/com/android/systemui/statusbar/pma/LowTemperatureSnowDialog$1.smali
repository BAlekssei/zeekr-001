.class Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;
.super Ljava/lang/Object;
.source "LowTemperatureSnowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->access$000(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->access$000(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->access$100(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setBatteryPreheatingButton(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->access$000(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->access$100(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setBatteryPreheatingButton(I)V

    .line 85
    :goto_0
    return-void
.end method
