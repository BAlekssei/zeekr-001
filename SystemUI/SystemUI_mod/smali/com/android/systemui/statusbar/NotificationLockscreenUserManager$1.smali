.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationLockscreenUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "userId":I
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->getSendingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$000(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 84
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updateLockscreenNotificationSetting()V

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    goto :goto_0

    .line 86
    :cond_0
    const-string v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->onWorkChallengeChanged()V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method
