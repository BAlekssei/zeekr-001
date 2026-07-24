.class Lcom/android/systemui/settings/BrightnessController$6;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 234
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1302(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 239
    const/4 v0, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 259
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 256
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;Z)V

    .line 257
    goto :goto_4

    .line 253
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 254
    goto :goto_4

    .line 250
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 251
    goto :goto_4

    .line 247
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 248
    goto :goto_4

    .line 244
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-static {v2, v3, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1500(Lcom/android/systemui/settings/BrightnessController;IZ)V

    .line 245
    goto :goto_4

    .line 241
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1400(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    nop

    .line 262
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1, v0}, Lcom/android/systemui/settings/BrightnessController;->access$1302(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->access$1302(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
