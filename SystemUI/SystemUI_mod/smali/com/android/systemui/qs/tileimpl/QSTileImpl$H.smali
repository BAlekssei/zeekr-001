.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 409
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 410
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 411
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 415
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    const/4 v0, 0x0

    .line 417
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 418
    const-string v1, "handleAddCallback"

    move-object v0, v1

    .line 419
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    .line 420
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 421
    const-string v1, "handleRemoveCallbacks"

    move-object v0, v1

    .line 422
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto/16 :goto_4

    .line 423
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 424
    const-string v1, "handleRemoveCallback"

    move-object v0, v1

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    .line 426
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    .line 427
    const-string v1, "handleClick"

    move-object v0, v1

    .line 428
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 430
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v1, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 433
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 434
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto/16 :goto_4

    .line 436
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 437
    const-string v1, "handleSecondaryClick"

    move-object v0, v1

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_4

    .line 439
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 440
    const-string v1, "handleLongClick"

    move-object v0, v1

    .line 441
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_4

    .line 442
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    .line 443
    const-string v1, "handleRefreshState"

    move-object v0, v1

    .line 444
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 445
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    .line 446
    const-string v1, "handleShowDetail"

    move-object v0, v1

    .line 447
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_4

    .line 448
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_a

    .line 449
    const-string v1, "handleUserSwitch"

    move-object v0, v1

    .line 450
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_4

    .line 451
    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_c

    .line 452
    const-string v1, "handleToggleStateChanged"

    move-object v0, v1

    .line 453
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_b
    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    .line 454
    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_e

    .line 455
    const-string v1, "handleScanStateChanged"

    move-object v0, v1

    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_d

    goto :goto_2

    :cond_d
    move v2, v4

    :goto_2
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    .line 457
    :cond_e
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_f

    .line 458
    const-string v1, "handleDestroy"

    move-object v0, v1

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto :goto_4

    .line 460
    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_11

    .line 461
    const-string v1, "handleSetListeningInternal"

    move-object v0, v1

    .line 462
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_10

    goto :goto_3

    :cond_10
    move v2, v4

    :goto_3
    invoke-static {v1, v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto :goto_4

    .line 463
    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_12

    .line 464
    const-string v1, "handleStale"

    move-object v0, v1

    .line 465
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    .line 473
    :goto_4
    goto :goto_5

    .line 467
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v3, v2, v1}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "error":Ljava/lang/String;
    :goto_5
    return-void
.end method
