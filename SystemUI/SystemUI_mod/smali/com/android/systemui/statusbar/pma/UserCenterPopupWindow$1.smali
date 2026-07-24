.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$1;
.super Ljava/lang/Object;
.source "UserCenterPopupWindow.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudUpdateAccountListNotify(I)V
    .locals 0
    .param p1, "i"    # I

    .line 176
    return-void
.end method

.method public onPreferenceNameChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "s2"    # Ljava/lang/String;

    .line 173
    return-void
.end method

.method public onPreferenceUserChange(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method
