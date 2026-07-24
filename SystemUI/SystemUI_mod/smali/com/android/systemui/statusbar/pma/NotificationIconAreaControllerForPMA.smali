.class public Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;
.super Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.source "NotificationIconAreaControllerForPMA.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 48
    return-void
.end method

.method static synthetic lambda$updateStatusBarNotificationIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "iconTint"    # I

    .line 53
    return-void
.end method

.method public updateStatusBarNotificationIcons()V
    .locals 6

    .line 62
    sget-object v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NotificationIconAreaControllerForPMA$LV_XcObvBg_NOtxbuLnaGrTYDy4;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$NotificationIconAreaControllerForPMA$LV_XcObvBg_NOtxbuLnaGrTYDy4;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZ)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;->applyNotificationIconsTint()V

    .line 64
    return-void
.end method
