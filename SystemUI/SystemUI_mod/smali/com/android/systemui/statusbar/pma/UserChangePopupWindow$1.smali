.class Lcom/android/systemui/statusbar/pma/UserChangePopupWindow$1;
.super Landroid/os/Handler;
.source "UserChangePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->dismiss()V

    .line 108
    nop

    .line 112
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    return-void
.end method
