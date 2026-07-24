.class Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;
.super Landroid/os/Handler;
.source "DvrPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 409
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 412
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 432
    :pswitch_0
    const-string v0, "DvrPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HANDLE_UPDATE_DVR_STATE mDvrIsOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$500(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)V

    .line 434
    goto :goto_1

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;->getCurrentDvrStates()I

    move-result v0

    .line 416
    .local v0, "sts":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$202(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$302(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z

    goto :goto_0

    .line 419
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$202(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z

    .line 421
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$302(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z

    goto :goto_0

    .line 423
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$202(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z

    .line 424
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$302(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)Z

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Z)V

    .line 427
    .end local v0    # "sts":I
    nop

    .line 438
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 439
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
