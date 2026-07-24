.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;
.super Ljava/lang/Object;
.source "StatusBarForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;->onReceive(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;

.field final synthetic val$parking_status:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;

    .line 527
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->val$parking_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 531
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->val$parking_status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->val$parking_status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5$1;->val$parking_status:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;I)V

    .line 535
    return-void
.end method
