.class Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;
.super Landroid/os/Handler;
.source "PmaTemperatureSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->access$000(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->access$000(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;->access$100(Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaTemperatureSeekbar$PmaTemperatureSeekbarCallback;->onProgressChanage(I)V

    .line 94
    :cond_1
    :goto_0
    return-void
.end method
