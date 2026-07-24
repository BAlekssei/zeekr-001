.class Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;
.super Ljava/lang/Object;
.source "SentryModePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 118
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "SentryModePopupWindow"

    const-string v1, "mSwitch clicked is too fast !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$100(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 123
    .local v0, "isChecked":Z
    const-string v1, "SentryModePopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchClickView isChecked == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Landroid/os/Handler;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 125
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void
.end method
