.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSwipeHelper"
.end annotation


# instance fields
.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 1
    .param p2, "swipeDirection"    # I
    .param p3, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p4, "context"    # Landroid/content/Context;

    .line 4688
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 4689
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    .line 4690
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    .line 4691
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    .line 4697
    return-void
.end method

.method private handleMenuCoveredOrDismissed()V
    .locals 2

    .line 4771
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4772
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2302(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4774
    :cond_0
    return-void
.end method


# virtual methods
.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4833
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    .line 4834
    .local v0, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v1, 0x0

    .line 4835
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4837
    move-object v1, v0

    goto :goto_0

    .line 4838
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 4839
    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4841
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v1

    .line 4843
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4845
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4848
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 4850
    :cond_2
    return-void
.end method

.method public dismiss(Landroid/view/View;F)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 4798
    nop

    .line 4799
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedFastEnough(FF)Z

    move-result v0

    .line 4798
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 4800
    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "useAccelerateInterpolator"    # Z

    .line 4740
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 4741
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4744
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V

    .line 4746
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4749
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    .line 4750
    return-void
.end method

.method public getMinDismissVelocity()F
    .locals 1

    .line 4819
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getEscapeVelocity()F

    move-result v0

    return v0
.end method

.method public getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 4793
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v0

    return v0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 4779
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 4780
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 4782
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "translation"    # F

    .line 4731
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4732
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0

    .line 4734
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4767
    invoke-super {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "currView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 4701
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1802(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4702
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4703
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    .line 4705
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1902(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 4706
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4709
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 4711
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 4712
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4713
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1902(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 4714
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setSwipeActionHelper(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 4715
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V

    .line 4716
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    .line 4718
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .locals 4
    .param p1, "animView"    # Landroid/view/View;

    .line 4823
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onDragCancelled(Landroid/view/View;)V

    .line 4826
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAntiFalsingNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4827
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4828
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4830
    :cond_0
    return-void
.end method

.method public onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "translation"    # F
    .param p4, "delta"    # F

    .line 4722
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4723
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4724
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    .line 4726
    :cond_0
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 4853
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 4854
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$1800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    .line 4859
    .local v0, "prevMenuExposedView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4860
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v2

    .line 4862
    .local v2, "anim":Landroid/animation/Animator;
    if-eqz v2, :cond_1

    .line 4863
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 4865
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    .line 4866
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4867
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4868
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    .line 4871
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2302(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4872
    return-void

    .line 4856
    .end local v0    # "prevMenuExposedView":Landroid/view/View;
    :cond_4
    :goto_1
    return-void
.end method

.method public setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .line 4788
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslation(F)V

    .line 4789
    return-void
.end method

.method public snap(Landroid/view/View;FF)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .line 4804
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 4805
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .line 4754
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 4755
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onDragCancelled(Landroid/view/View;)V

    .line 4756
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 4757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    .line 4759
    :cond_0
    return-void
.end method

.method public snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeOption"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 4763
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 4764
    return-void
.end method

.method public swipedFarEnough(FF)Z
    .locals 1
    .param p1, "translation"    # F
    .param p2, "viewSize"    # F

    .line 4809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedFarEnough()Z

    move-result v0

    return v0
.end method

.method public swipedFastEnough(FF)Z
    .locals 1
    .param p1, "translation"    # F
    .param p2, "velocity"    # F

    .line 4814
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedFastEnough()Z

    move-result v0

    return v0
.end method
