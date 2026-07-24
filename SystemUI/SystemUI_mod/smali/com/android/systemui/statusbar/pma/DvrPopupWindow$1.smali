.class Lcom/android/systemui/statusbar/pma/DvrPopupWindow$1;
.super Ljava/lang/Object;
.source "DvrPopupWindow.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 248
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 251
    const-string v0, "DvrPopupWindow"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$100(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;)Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;->getDvrManager()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->access$002(Lcom/android/systemui/statusbar/pma/DvrPopupWindow;Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;)Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    .line 253
    return-void
.end method

.method public onDisConnected()V
    .locals 2

    .line 257
    const-string v0, "DvrPopupWindow"

    const-string v1, "onDisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method
