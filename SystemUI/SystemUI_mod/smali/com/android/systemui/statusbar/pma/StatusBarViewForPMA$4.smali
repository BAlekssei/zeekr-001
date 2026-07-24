.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$4;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/PopupDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
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

    .line 608
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public windowShow(Z)V
    .locals 3
    .param p1, "isShowing"    # Z

    .line 611
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAqiDialogListener windowShow isShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 615
    return-void
.end method
