.class Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;
.super Ljava/lang/Object;
.source "SentryModePopupWindow.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;
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

    .line 329
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 333
    const-string v0, "SentryModePopupWindow"

    const-string v1, "onServiceConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {p2}, Lcom/zeekr/sentry/ISwitchSevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekr/sentry/ISwitchSevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$002(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;Lcom/zeekr/sentry/ISwitchSevice;)Lcom/zeekr/sentry/ISwitchSevice;

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$302(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;Z)Z

    .line 336
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 340
    const-string v0, "SentryModePopupWindow"

    const-string v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$302(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;Z)Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$002(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;Lcom/zeekr/sentry/ISwitchSevice;)Lcom/zeekr/sentry/ISwitchSevice;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow$4;->this$0:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->access$400(Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;)V

    .line 344
    return-void
.end method
