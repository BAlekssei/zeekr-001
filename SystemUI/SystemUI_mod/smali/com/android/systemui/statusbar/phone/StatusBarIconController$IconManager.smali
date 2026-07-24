.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconManager"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field protected mDemoable:Z

.field protected final mGroup:Landroid/view/ViewGroup;

.field protected final mIconSize:I

.field private mIsInDemoMode:Z

.field protected mShouldLog:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    .line 205
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 206
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 210
    new-instance v1, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    move-object v0, v1

    .line 212
    .local v0, "tracker":Lcom/android/systemui/util/Utils$DisableStateTracker;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/Utils$DisableStateTracker;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 217
    :cond_0
    return-void
.end method

.method private onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z

    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method private onCreateStatusBarMobileView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 300
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    return-object v0
.end method

.method private onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 295
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarWifiView;
    return-object v0
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "height"    # I

    .line 328
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 329
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 331
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 333
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .locals 1
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 242
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 250
    :pswitch_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    return-object v0

    .line 244
    :pswitch_2
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 259
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 260
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-object v0
.end method

.method protected addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 279
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarMobileView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 280
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 286
    :cond_0
    return-object v0
.end method

.method protected addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 267
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 268
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarWifiView;
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 274
    :cond_0
    return-object v0
.end method

.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .locals 3

    .line 413
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    return-object v0
.end method

.method protected destroy()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 309
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    if-nez v0, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->exitDemoMode()V

    .line 397
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_3

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 405
    :goto_0
    return-void
.end method

.method protected exitDemoMode()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->remove()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 410
    return-void
.end method

.method public isDemoable()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    return v0
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 304
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 237
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 238
    return-void
.end method

.method protected onIconExternal(II)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "height"    # I

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 313
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 315
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 316
    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 2
    .param p1, "viewIndex"    # I

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 341
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 345
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 346
    return-void
.end method

.method public onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 349
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 355
    return-void

    .line 351
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 352
    return-void

    .line 362
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 377
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 381
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 384
    :cond_1
    return-void
.end method

.method public onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 366
    .local v0, "wifiView":Lcom/android/systemui/statusbar/StatusBarWifiView;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 370
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 373
    :cond_1
    return-void
.end method

.method public setShouldLog(Z)V
    .locals 0
    .param p1, "should"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    .line 229
    return-void
.end method

.method public shouldLog()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    return v0
.end method
