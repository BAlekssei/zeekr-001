.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;
.super Ljava/lang/Object;
.source "UserCenterPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    .line 608
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;->this$1:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;->this$1:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$500(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;->this$1:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->setData(Ljava/util/List;)V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;->this$1:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$500(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Lcom/android/systemui/statusbar/pma/UserInfoAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$ImageDownloadHandler$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UserInfoAdapter;->notifyItemChanged(I)V

    .line 613
    return-void
.end method
