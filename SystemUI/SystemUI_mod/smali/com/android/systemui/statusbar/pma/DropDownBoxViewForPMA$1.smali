.class Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA$1;
.super Landroid/content/BroadcastReceiver;
.source "DropDownBoxViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    invoke-static {}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "DropDownBoxViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive intent.getAction() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ecarx.intent.action.CONTROL_BOARD_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const-string v0, "DropDownBoxViewForPMA"

    const-string v1, "mCollapseReceiver fully collapsed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->collapse(ZF)V

    .line 164
    :cond_1
    return-void
.end method
