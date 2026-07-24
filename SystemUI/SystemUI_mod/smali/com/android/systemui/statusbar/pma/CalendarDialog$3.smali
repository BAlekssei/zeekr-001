.class Lcom/android/systemui/statusbar/pma/CalendarDialog$3;
.super Ljava/lang/Object;
.source "CalendarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/CalendarDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$3;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog$3;->this$0:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->access$300(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Lcom/haibin/calendarview/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->scrollToNext()V

    .line 116
    return-void
.end method
