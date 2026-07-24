.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setEnduranceMileage(I)V
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

    .line 1942
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1945
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1947
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    return-void
.end method
