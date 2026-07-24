.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;
.super Landroid/os/Handler;
.source "StatusBarFragmentForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 242
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 337
    :pswitch_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_UPDATE_USERS_PHOTO_TO_FILE "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$3;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 352
    :cond_0
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE_UPDATE_USERS_PHOTO_TO_FILE not id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    goto/16 :goto_3

    .line 319
    .end local v0    # "id":Ljava/lang/String;
    :pswitch_1
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_UPDATE_HISTORY_USER_ACCOUNT_INFOLIST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 334
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 335
    goto/16 :goto_3

    .line 310
    :pswitch_2
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_UPDATE_DEFAULT_USER_HABIT_NAME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    goto/16 :goto_3

    .line 307
    :pswitch_3
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_UPDATE_DEFAULT_USER_HABIT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    goto/16 :goto_3

    .line 303
    :pswitch_4
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_SHOW_USER_TOAST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setDialogShow()V

    .line 305
    goto/16 :goto_3

    .line 298
    :pswitch_5
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_UPDATE_USER_PREFERENCE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateDefaultPreference()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->switchToCurrentPreference()V

    .line 301
    goto/16 :goto_3

    .line 292
    :pswitch_6
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 293
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler profileId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", profileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[I

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->updateUserHabit(ILjava/lang/String;)V

    .line 292
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_1
    goto/16 :goto_3

    .line 283
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "url":Ljava/lang/String;
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HANDLE_UPDATE_USER_PHOTO url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAccountPhoto(ZLjava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v0    # "url":Ljava/lang/String;
    goto/16 :goto_3

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAccountPhoto(ZLjava/lang/String;Ljava/lang/String;)V

    .line 290
    goto/16 :goto_3

    .line 279
    :pswitch_8
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "HANDLE_UPDATE_USER_CHANGE_LAYOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 281
    goto/16 :goto_3

    .line 253
    :pswitch_9
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "handleMessage: HANDLE_UPDATE_USER_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "isNeedClearUsersIdPhotoURL":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeekr/sdk/user/bean/AccountBean;

    .line 257
    .local v2, "historyUserInfo":Lcom/zeekr/sdk/user/bean/AccountBean;
    invoke-virtual {v2}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 258
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 259
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zeekr/sdk/user/bean/AccountBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v0, 0x1

    .line 261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 262
    .local v3, "message":Landroid/os/Message;
    const/16 v4, 0xc

    iput v4, v3, Landroid/os/Message;->what:I

    .line 263
    invoke-virtual {v2}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I

    move-result v4

    if-nez v4, :cond_4

    .line 265
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 267
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1388

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    .end local v2    # "historyUserInfo":Lcom/zeekr/sdk/user/bean/AccountBean;
    .end local v3    # "message":Landroid/os/Message;
    :cond_5
    :goto_2
    goto/16 :goto_1

    .line 272
    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 276
    .end local v0    # "isNeedClearUsersIdPhotoURL":Z
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setData(Ljava/util/List;)V

    .line 277
    goto :goto_3

    .line 250
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->showLayout(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    goto :goto_3

    .line 247
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 248
    nop

    .line 358
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
