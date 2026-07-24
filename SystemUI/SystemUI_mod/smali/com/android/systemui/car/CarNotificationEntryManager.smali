.class public Lcom/android/systemui/car/CarNotificationEntryManager;
.super Lcom/android/systemui/statusbar/NotificationEntryManager;
.source "CarNotificationEntryManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getNotificationLongClicker()Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/car/CarNotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method
