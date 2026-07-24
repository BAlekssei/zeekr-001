.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;
.super Landroid/os/Handler;
.source "UserCenterPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDownloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 589
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 590
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 591
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 595
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 597
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 598
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "userUrl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "userId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 601
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 602
    .local v3, "cnt":I
    const/4 v4, 0x0

    .line 602
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 603
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 604
    const-string v5, "UserCenterPopupWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imageDownloadHandler: getUrlToDrawable!=null i=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "url"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " id=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 606
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/UserAccountInfo;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/pma/UserAccountInfo;->setUserDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    move v5, v4

    .line 608
    .local v5, "position":I
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;-><init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    goto :goto_2

    .line 617
    .end local v5    # "position":I
    :cond_1
    const-string v5, "UserCenterPopupWindow"

    const-string v6, "imageDownloadHandler: userUrl != mData.info.avatarUrl"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 620
    :cond_2
    const-string v5, "UserCenterPopupWindow"

    const-string v6, "imageDownloadHandler: can\'t find userId in mData"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 623
    .end local v3    # "cnt":I
    .end local v4    # "i":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 624
    :cond_4
    const-string v3, "UserCenterPopupWindow"

    const-string v4, "imageDownloadHandler: getUrlToDrawable==null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    nop

    .line 630
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "userUrl":Ljava/lang/String;
    .end local v2    # "userId":Ljava/lang/String;
    :goto_3
    return-void
.end method
