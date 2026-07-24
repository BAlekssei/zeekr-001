.class Lcom/android/systemui/statusbar/pma/UserCenterToast$1;
.super Landroid/os/Handler;
.source "UserCenterToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/UserCenterToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterToast;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserCenterToast;

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast$1;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    const-string v0, "AccountExitDialog"

    const-string v1, "UserCenterToast, CLOSE_WINDOW "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast$1;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->dismiss()V

    .line 167
    goto :goto_0

    .line 161
    :pswitch_1
    const-string v0, "AccountExitDialog"

    const-string v1, "UserCenterToast, SHOW_WINDOW "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterToast$1;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->dismiss()V

    .line 163
    nop

    .line 171
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
