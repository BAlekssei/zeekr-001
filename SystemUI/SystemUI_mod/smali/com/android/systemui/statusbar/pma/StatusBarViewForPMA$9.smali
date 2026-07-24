.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$9;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/PopupDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOnViewClickListener(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;)V
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

    .line 663
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$9;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public windowShow(Z)V
    .locals 3
    .param p1, "isShowing"    # Z

    .line 666
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWirelessChargeListener windowShow isShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1800()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 670
    return-void
.end method
