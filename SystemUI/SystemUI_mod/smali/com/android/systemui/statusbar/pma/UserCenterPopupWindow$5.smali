.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;
.super Ljava/lang/Object;
.source "UserCenterPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->showLayout(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isLogin:Z

.field final synthetic val$photoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 669
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$photoUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$isLogin:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$900(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$1000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    :cond_0
    return-void
.end method

.method public static synthetic lambda$run$1(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "idBitmap"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$900(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$1000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$702(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;J)J

    .line 673
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 674
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$photoUrl:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$photoUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 679
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$602(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;J)J

    .line 681
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$600(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$700(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v3, v5, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$600(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$700(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    :cond_0
    if-eqz v2, :cond_1

    .line 685
    const-string v1, "UserCenterPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showLayout getUrlToDrawable!=null, isLogin=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$isLogin:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", (timeEnd - timeStart)=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$600(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$700(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", photoUrl=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$photoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$1000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$id:Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/pma/-$$Lambda$UserCenterPopupWindow$5$ytH6ycaOYajsfMzpmt1DZ2k6XAE;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$UserCenterPopupWindow$5$ytH6ycaOYajsfMzpmt1DZ2k6XAE;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/pma/CircleImage;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$id:Ljava/lang/String;

    .line 693
    .local v1, "idBitmap":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$800(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->val$photoUrl:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getFileToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 694
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 695
    const-string v4, "UserCenterPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showLayout getFileToBitmap!=null, idBitmap.equals(currentUserId) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$900(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", &&mLogin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$1000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/pma/-$$Lambda$UserCenterPopupWindow$5$oiFw1bDKPS0AvZ3yTsQ9ym48pb8;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/systemui/statusbar/pma/-$$Lambda$UserCenterPopupWindow$5$oiFw1bDKPS0AvZ3yTsQ9ym48pb8;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$5;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/CircleImage;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 702
    :cond_2
    const-string v4, "UserCenterPopupWindow"

    const-string/jumbo v5, "showLayout getFileToBitmap == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v1    # "idBitmap":Ljava/lang/String;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void
.end method
