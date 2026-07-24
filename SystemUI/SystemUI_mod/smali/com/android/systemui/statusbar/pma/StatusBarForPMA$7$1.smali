.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;
.super Ljava/lang/Object;
.source "StatusBarForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;->onReceive(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;

.field final synthetic val$code:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;

    .line 668
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->val$code:I

    iput p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 671
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_ID_VOLUME_CONTROL code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->val$code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->val$value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->val$code:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;->val$value:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setRotaryKnobEvent(II)V

    .line 675
    return-void
.end method
