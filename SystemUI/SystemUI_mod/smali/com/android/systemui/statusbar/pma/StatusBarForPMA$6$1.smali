.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;
.super Ljava/lang/Object;
.source "StatusBarForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->onReceive(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;

.field final synthetic val$charging_full_status:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;

    .line 579
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;->val$charging_full_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 583
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;->val$charging_full_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;I)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;I)V

    .line 589
    :goto_0
    return-void
.end method
