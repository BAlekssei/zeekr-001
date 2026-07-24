.class Lcom/android/systemui/statusbar/pma/RestModePopupWindow$1;
.super Landroid/os/Handler;
.source "RestModePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/RestModePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/RestModePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->dismiss()V

    .line 127
    nop

    .line 131
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    return-void
.end method
