.class Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;
.super Lcom/android/aidl/pma/IPmaSystemUIAvatar$Stub;
.source "PmaSystemUIAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    invoke-direct {p0}, Lcom/android/aidl/pma/IPmaSystemUIAvatar$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public IsLauncherShow()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$200(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "PmaSystemUIAvatar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsLauncherShow packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "ecarx.launcher3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public showAvatarView(Z)V
    .locals 3
    .param p1, "isShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "PmaSystemUIAvatar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmaSystemUIAvatar showAvatarView isShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yfvet.ACTION_AVATAR_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isAvatarShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$100(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$100(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "PmaSystemUIAvatar"

    const-string v2, "mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void
.end method

.method public showStatusBar(Z)V
    .locals 3
    .param p1, "isShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "PmaSystemUIAvatar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmaSystemUIAvatar showStatusBar isShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yfvet.ACTION_STATUS_BAR_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isStatusBarShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$100(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->access$100(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "PmaSystemUIAvatar"

    const-string v2, "mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void
.end method
