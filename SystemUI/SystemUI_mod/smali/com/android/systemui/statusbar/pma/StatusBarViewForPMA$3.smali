.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;
.super Landroid/os/Handler;
.source "StatusBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 499
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 502
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 535
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getNetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 550
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 551
    .end local v0    # "url":Ljava/lang/String;
    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getNetConnected()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 521
    :pswitch_1
    const-string v0, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_FILE_TO_BITMAP setAccountPhoto: entering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 523
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$900()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getFileToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_FILE_TO_BITMAP setAccountPhoto: getFileToBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isAlreadyLogin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    if-eqz v0, :cond_2

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$900()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08063f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    goto :goto_1

    .line 515
    :pswitch_2
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_AWAKE_SCENE_CHECK isAwakeBinder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Z

    move-result v0

    goto :goto_1

    .line 504
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$300()I

    move-result v0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_5

    .line 505
    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$302(I)I

    .line 507
    const-string v0, "persist.did.usbmode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 508
    const-string v0, "com.yfvet.engineeringmode"

    const-string v1, "com.yfvet.engineeringmode.main.MainActivity"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 511
    :cond_5
    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$302(I)I

    .line 513
    nop

    .line 558
    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
