.class Lcom/android/systemui/statusbar/pma/CalendarDialog$4;
.super Landroid/os/Handler;
.source "CalendarDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CalendarDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CalendarDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$4;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$4;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$300(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Lcom/haibin/calendarview/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->scrollToCurrent()V

    .line 208
    nop

    .line 212
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    return-void
.end method
