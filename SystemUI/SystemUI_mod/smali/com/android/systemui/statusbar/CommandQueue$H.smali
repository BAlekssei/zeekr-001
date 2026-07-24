.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .line 555
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 556
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui/statusbar/CommandQueue$1;

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 560
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 561
    .local v0, "what":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_36

    .line 796
    :sswitch_0
    nop

    .line 796
    .local v2, "i":I
    :goto_0
    move v1, v2

    .line 796
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 797
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    .line 796
    add-int/lit8 v2, v1, 0x1

    .line 796
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 791
    .end local v2    # "i":I
    :sswitch_1
    nop

    .line 791
    .restart local v2    # "i":I
    :goto_1
    move v1, v2

    .line 791
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    .line 791
    add-int/lit8 v2, v1, 0x1

    .line 791
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 794
    .end local v2    # "i":I
    :cond_0
    goto/16 :goto_36

    .line 786
    :sswitch_2
    nop

    .line 786
    .restart local v2    # "i":I
    :goto_2
    move v1, v2

    .line 786
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 787
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    .line 786
    add-int/lit8 v2, v1, 0x1

    .line 786
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 789
    .end local v2    # "i":I
    :cond_1
    goto/16 :goto_36

    .line 781
    :sswitch_3
    nop

    .line 781
    .restart local v2    # "i":I
    :goto_3
    move v1, v2

    .line 781
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 782
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideFingerprintDialog()V

    .line 781
    add-int/lit8 v2, v1, 0x1

    .line 781
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 784
    .end local v2    # "i":I
    :cond_2
    goto/16 :goto_36

    .line 776
    :sswitch_4
    nop

    .line 776
    .restart local v2    # "i":I
    :goto_4
    move v1, v2

    .line 776
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 777
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintError(Ljava/lang/String;)V

    .line 776
    add-int/lit8 v2, v1, 0x1

    .line 776
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 779
    .end local v2    # "i":I
    :cond_3
    goto/16 :goto_36

    .line 771
    :sswitch_5
    nop

    .line 771
    .restart local v2    # "i":I
    :goto_5
    move v1, v2

    .line 771
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 772
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintHelp(Ljava/lang/String;)V

    .line 771
    add-int/lit8 v2, v1, 0x1

    .line 771
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_5

    .line 774
    .end local v2    # "i":I
    :cond_4
    goto/16 :goto_36

    .line 766
    :sswitch_6
    nop

    .line 766
    .restart local v2    # "i":I
    :goto_6
    move v1, v2

    .line 766
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 767
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFingerprintAuthenticated()V

    .line 766
    add-int/lit8 v2, v1, 0x1

    .line 766
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_6

    .line 769
    .end local v2    # "i":I
    :cond_5
    goto/16 :goto_36

    .line 756
    :sswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x2a0000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x290000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x280000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    nop

    .line 759
    .restart local v2    # "i":I
    :goto_7
    move v1, v2

    .line 759
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 760
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    .line 759
    add-int/lit8 v2, v1, 0x1

    .line 759
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_7

    .line 764
    .end local v2    # "i":I
    :cond_6
    goto/16 :goto_36

    .line 751
    :sswitch_8
    move v3, v2

    .line 751
    .local v3, "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 752
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_7

    move v6, v1

    goto :goto_9

    :cond_7
    move v6, v2

    :goto_9
    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 754
    .end local v3    # "i":I
    :cond_8
    goto/16 :goto_36

    .line 746
    :sswitch_9
    move v3, v2

    .line 746
    .restart local v3    # "i":I
    :goto_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 747
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_9

    move v5, v1

    goto :goto_b

    :cond_9
    move v5, v2

    :goto_b
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    .line 746
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 749
    .end local v3    # "i":I
    :cond_a
    goto/16 :goto_36

    .line 741
    :sswitch_a
    move v3, v2

    .line 741
    .restart local v3    # "i":I
    :goto_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 742
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_b

    move v5, v1

    goto :goto_d

    :cond_b
    move v5, v2

    :goto_d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(ZLjava/lang/String;)V

    .line 741
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 744
    .end local v3    # "i":I
    :cond_c
    goto/16 :goto_36

    .line 595
    :sswitch_b
    nop

    .line 595
    .restart local v2    # "i":I
    :goto_e
    move v1, v2

    .line 595
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 596
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    .line 595
    add-int/lit8 v2, v1, 0x1

    .line 595
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_e

    .line 598
    .end local v2    # "i":I
    :cond_d
    goto/16 :goto_36

    .line 736
    :sswitch_c
    nop

    .line 736
    .restart local v2    # "i":I
    :goto_f
    move v1, v2

    .line 736
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 737
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    .line 736
    add-int/lit8 v2, v1, 0x1

    .line 736
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_f

    .line 739
    .end local v2    # "i":I
    :cond_e
    goto/16 :goto_36

    .line 731
    :sswitch_d
    nop

    .line 731
    .restart local v2    # "i":I
    :goto_10
    move v1, v2

    .line 731
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 732
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(I)V

    .line 731
    add-int/lit8 v2, v1, 0x1

    .line 731
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_10

    .line 734
    .end local v2    # "i":I
    :cond_f
    goto/16 :goto_36

    .line 649
    :sswitch_e
    nop

    .line 649
    .restart local v2    # "i":I
    :goto_11
    move v1, v2

    .line 649
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    .line 649
    add-int/lit8 v2, v1, 0x1

    .line 649
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_11

    .line 652
    .end local v2    # "i":I
    :cond_10
    goto/16 :goto_36

    .line 686
    :sswitch_f
    nop

    .line 686
    .restart local v2    # "i":I
    :goto_12
    move v1, v2

    .line 686
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 687
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished()V

    .line 686
    add-int/lit8 v2, v1, 0x1

    .line 686
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_12

    .line 689
    .end local v2    # "i":I
    :cond_11
    goto/16 :goto_36

    .line 726
    :sswitch_10
    nop

    .line 726
    .restart local v2    # "i":I
    :goto_13
    move v1, v2

    .line 726
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 727
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    .line 726
    add-int/lit8 v2, v1, 0x1

    .line 726
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_13

    .line 729
    .end local v2    # "i":I
    :cond_12
    goto/16 :goto_36

    .line 721
    :sswitch_11
    nop

    .line 721
    .restart local v2    # "i":I
    :goto_14
    move v1, v2

    .line 721
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 722
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    .line 721
    add-int/lit8 v2, v1, 0x1

    .line 721
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_14

    .line 724
    .end local v2    # "i":I
    :cond_13
    goto/16 :goto_36

    .line 716
    :sswitch_12
    nop

    .line 716
    .restart local v2    # "i":I
    :goto_15
    move v1, v2

    .line 716
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 717
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    .line 716
    add-int/lit8 v2, v1, 0x1

    .line 716
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_15

    .line 719
    .end local v2    # "i":I
    :cond_14
    goto/16 :goto_36

    .line 711
    :sswitch_13
    nop

    .line 711
    .restart local v2    # "i":I
    :goto_16
    move v1, v2

    .line 711
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 712
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    .line 711
    add-int/lit8 v2, v1, 0x1

    .line 711
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_16

    .line 714
    .end local v2    # "i":I
    :cond_15
    goto/16 :goto_36

    .line 706
    :sswitch_14
    nop

    .line 706
    .restart local v2    # "i":I
    :goto_17
    move v1, v2

    .line 706
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 707
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    .line 706
    add-int/lit8 v2, v1, 0x1

    .line 706
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_17

    .line 709
    .end local v2    # "i":I
    :cond_16
    goto/16 :goto_36

    .line 654
    :sswitch_15
    nop

    .line 654
    .restart local v2    # "i":I
    :goto_18
    move v1, v2

    .line 654
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 655
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    .line 654
    add-int/lit8 v2, v1, 0x1

    .line 654
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_18

    .line 657
    .end local v2    # "i":I
    :cond_17
    goto/16 :goto_36

    .line 701
    :sswitch_16
    nop

    .line 701
    .restart local v2    # "i":I
    :goto_19
    move v1, v2

    .line 701
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 702
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    .line 701
    add-int/lit8 v2, v1, 0x1

    .line 701
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_19

    .line 704
    .end local v2    # "i":I
    :cond_18
    goto/16 :goto_36

    .line 696
    :sswitch_17
    nop

    .line 696
    .restart local v2    # "i":I
    :goto_1a
    move v1, v2

    .line 696
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 697
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    .line 696
    add-int/lit8 v2, v1, 0x1

    .line 696
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1a

    .line 699
    .end local v2    # "i":I
    :cond_19
    goto/16 :goto_36

    .line 691
    :sswitch_18
    nop

    .line 691
    .restart local v2    # "i":I
    :goto_1b
    move v1, v2

    .line 691
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    .line 691
    add-int/lit8 v2, v1, 0x1

    .line 691
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1b

    .line 694
    .end local v2    # "i":I
    :cond_1a
    goto/16 :goto_36

    .line 679
    :sswitch_19
    move v3, v2

    .line 679
    .restart local v3    # "i":I
    :goto_1c
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1c

    .line 680
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 681
    .local v4, "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1b

    move v11, v1

    goto :goto_1d

    :cond_1b
    move v11, v2

    :goto_1d
    invoke-interface/range {v6 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(JJZ)V

    .line 679
    .end local v4    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 684
    .end local v3    # "i":I
    :cond_1c
    goto/16 :goto_36

    .line 674
    :sswitch_1a
    nop

    .line 674
    .restart local v2    # "i":I
    :goto_1e
    move v1, v2

    .line 674
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled()V

    .line 674
    add-int/lit8 v2, v1, 0x1

    .line 674
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1e

    .line 677
    .end local v2    # "i":I
    :cond_1d
    goto/16 :goto_36

    .line 669
    :sswitch_1b
    move v3, v2

    .line 669
    .restart local v3    # "i":I
    :goto_1f
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1f

    .line 670
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1e

    move v5, v1

    goto :goto_20

    :cond_1e
    move v5, v2

    :goto_20
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(Z)V

    .line 669
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 672
    .end local v3    # "i":I
    :cond_1f
    goto/16 :goto_36

    .line 664
    :sswitch_1c
    nop

    .line 664
    .restart local v2    # "i":I
    :goto_21
    move v1, v2

    .line 664
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 665
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    .line 664
    add-int/lit8 v2, v1, 0x1

    .line 664
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_21

    .line 667
    .end local v2    # "i":I
    :cond_20
    goto/16 :goto_36

    .line 629
    :sswitch_1d
    move v3, v2

    .line 629
    .restart local v3    # "i":I
    :goto_22
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 630
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_21

    move v5, v1

    goto :goto_23

    :cond_21
    move v5, v2

    :goto_23
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_22

    move v6, v1

    goto :goto_24

    :cond_22
    move v6, v2

    :goto_24
    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    .line 629
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 632
    .end local v3    # "i":I
    :cond_23
    goto/16 :goto_36

    .line 624
    :sswitch_1e
    move v3, v2

    .line 624
    .restart local v3    # "i":I
    :goto_25
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_25

    .line 625
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_24

    move v5, v1

    goto :goto_26

    :cond_24
    move v5, v2

    :goto_26
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 627
    .end local v3    # "i":I
    :cond_25
    goto/16 :goto_36

    .line 659
    :sswitch_1f
    nop

    .line 659
    .restart local v2    # "i":I
    :goto_27
    move v1, v2

    .line 659
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(II)V

    .line 659
    add-int/lit8 v2, v1, 0x1

    .line 659
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_27

    .line 662
    .end local v2    # "i":I
    :cond_26
    goto/16 :goto_36

    .line 644
    :sswitch_20
    nop

    .line 644
    .restart local v2    # "i":I
    :goto_28
    move v1, v2

    .line 644
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 645
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    .line 644
    add-int/lit8 v2, v1, 0x1

    .line 644
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_28

    .line 647
    .end local v2    # "i":I
    :cond_27
    goto/16 :goto_36

    .line 639
    :sswitch_21
    nop

    .line 639
    .restart local v2    # "i":I
    :goto_29
    move v1, v2

    .line 639
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 640
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    .line 639
    add-int/lit8 v2, v1, 0x1

    .line 639
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_29

    .line 642
    .end local v2    # "i":I
    :cond_28
    goto/16 :goto_36

    .line 634
    :sswitch_22
    nop

    .line 634
    .restart local v2    # "i":I
    :goto_2a
    move v1, v2

    .line 634
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    .line 634
    add-int/lit8 v2, v1, 0x1

    .line 634
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2a

    .line 637
    .end local v2    # "i":I
    :cond_29
    goto/16 :goto_36

    .line 618
    :sswitch_23
    move v1, v2

    .line 618
    .restart local v1    # "i":I
    :goto_2b
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 619
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 620
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "showImeSwitcherKey"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 619
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 622
    .end local v1    # "i":I
    :cond_2a
    goto/16 :goto_36

    .line 613
    :sswitch_24
    move v3, v2

    .line 613
    .restart local v3    # "i":I
    :goto_2c
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 614
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2b

    move v5, v1

    goto :goto_2d

    :cond_2b
    move v5, v2

    :goto_2d
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(Z)V

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 616
    .end local v3    # "i":I
    :cond_2c
    goto/16 :goto_36

    .line 605
    :sswitch_25
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 606
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    nop

    .line 606
    .restart local v2    # "i":I
    :goto_2e
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 607
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/graphics/Rect;

    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 610
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 611
    goto/16 :goto_36

    .line 600
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_26
    nop

    .line 600
    .restart local v2    # "i":I
    :goto_2f
    move v1, v2

    .line 600
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 601
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v2, v1, 0x1

    .line 600
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2f

    .line 603
    .end local v2    # "i":I
    :cond_2e
    goto/16 :goto_36

    .line 590
    :sswitch_27
    nop

    .line 590
    .restart local v2    # "i":I
    :goto_30
    move v1, v2

    .line 590
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 591
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(I)V

    .line 590
    add-int/lit8 v2, v1, 0x1

    .line 590
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_30

    .line 593
    .end local v2    # "i":I
    :cond_2f
    goto/16 :goto_36

    .line 585
    :sswitch_28
    nop

    .line 585
    .restart local v2    # "i":I
    :goto_31
    move v1, v2

    .line 585
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 586
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    .line 585
    add-int/lit8 v2, v1, 0x1

    .line 585
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_31

    .line 588
    .end local v2    # "i":I
    :cond_30
    goto/16 :goto_36

    .line 580
    :sswitch_29
    nop

    .line 580
    .restart local v2    # "i":I
    :goto_32
    move v1, v2

    .line 580
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 581
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIZ)V

    .line 580
    add-int/lit8 v2, v1, 0x1

    .line 580
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_32

    .line 583
    .end local v2    # "i":I
    :cond_31
    goto :goto_36

    .line 563
    :sswitch_2a
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_35

    .line 572
    :pswitch_0
    nop

    .line 572
    .restart local v2    # "i":I
    :goto_33
    move v1, v2

    .line 572
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 573
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    .line 572
    add-int/lit8 v2, v1, 0x1

    .line 572
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_33

    .line 565
    .end local v2    # "i":I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 566
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    nop

    .line 566
    .restart local v2    # "i":I
    :goto_34
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 567
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 569
    .end local v2    # "i":I
    :cond_32
    nop

    .line 577
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_33
    :goto_35
    nop

    .line 801
    :cond_34
    :goto_36
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2a
        0x20000 -> :sswitch_29
        0x30000 -> :sswitch_28
        0x40000 -> :sswitch_27
        0x50000 -> :sswitch_26
        0x60000 -> :sswitch_25
        0x70000 -> :sswitch_24
        0x80000 -> :sswitch_23
        0x90000 -> :sswitch_22
        0xa0000 -> :sswitch_21
        0xb0000 -> :sswitch_20
        0xc0000 -> :sswitch_1f
        0xd0000 -> :sswitch_1e
        0xe0000 -> :sswitch_1d
        0x120000 -> :sswitch_1c
        0x130000 -> :sswitch_1b
        0x140000 -> :sswitch_1a
        0x150000 -> :sswitch_19
        0x160000 -> :sswitch_18
        0x170000 -> :sswitch_17
        0x180000 -> :sswitch_16
        0x190000 -> :sswitch_15
        0x1a0000 -> :sswitch_14
        0x1b0000 -> :sswitch_13
        0x1c0000 -> :sswitch_12
        0x1d0000 -> :sswitch_11
        0x1e0000 -> :sswitch_10
        0x1f0000 -> :sswitch_f
        0x200000 -> :sswitch_e
        0x210000 -> :sswitch_d
        0x220000 -> :sswitch_c
        0x230000 -> :sswitch_b
        0x240000 -> :sswitch_a
        0x250000 -> :sswitch_9
        0x260000 -> :sswitch_8
        0x270000 -> :sswitch_7
        0x280000 -> :sswitch_6
        0x290000 -> :sswitch_5
        0x2a0000 -> :sswitch_4
        0x2b0000 -> :sswitch_3
        0x2c0000 -> :sswitch_2
        0x2d0000 -> :sswitch_1
        0x2e0000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
