.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;
.super Landroid/os/Handler;
.source "UserCenterPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 633
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 636
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 648
    :cond_0
    const-string v0, "UserCenterPopupWindow"

    const-string v1, "PREFERCE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->switchToCurrentPreference()V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateDefaultPreference()V

    .line 651
    goto/16 :goto_1

    .line 638
    :cond_1
    const-string v0, "UserCenterPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_FILE_TO_BITMAP showLayout: entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$600(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$700(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$600(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$700(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$800(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$900(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getFileToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 641
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "UserCenterPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_FILE_TO_BITMAP showLayout: getFileToBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eqz v0, :cond_3

    .line 643
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$1000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/CircleImage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CircleImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 645
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    nop

    .line 655
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 656
    return-void
.end method
