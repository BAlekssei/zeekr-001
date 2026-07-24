.class Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;
.super Ljava/lang/Object;
.source "SentryModePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 96
    const-string v0, "SentryModePopupWindow"

    const-string v1, "icon onClick "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Lcom/zeekr/sentry/ISwitchSevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)Lcom/zeekr/sentry/ISwitchSevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/zeekr/sentry/ISwitchSevice;->showGuide()V

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "SentryModePopupWindow"

    const-string v1, "icon setOnClickListener myService ==null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogDismiss()V

    .line 107
    return-void
.end method
