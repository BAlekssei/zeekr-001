.class Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;
.super Landroid/os/Handler;
.source "SentryModePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;
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

    .line 289
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 294
    :pswitch_0
    const-string v0, "SentryModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK_SENTRY_INIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V

    goto :goto_2

    .line 300
    :pswitch_1
    const-string v0, "SentryModePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_SWITCH_STATE checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Lcom/zeekr/sentry/ISwitchSevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Lcom/zeekr/sentry/ISwitchSevice;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/zeekr/sentry/ISwitchSevice;->toggleSwitch(Z)V

    goto :goto_1

    .line 305
    :cond_1
    const-string v0, "SentryModePopupWindow"

    const-string v1, "mSwitch setOnClickListener myService ==null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    goto :goto_2

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 314
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 315
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
