.class Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;
.super Landroid/os/Handler;
.source "DateAndClockLayoutForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->updateClock()V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setTimeFormat(I)V

    .line 175
    nop

    .line 180
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
