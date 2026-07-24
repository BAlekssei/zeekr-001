.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->updateUsb(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$isDayUIMode:Z

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2455
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->val$isShow:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->val$isDayUIMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->val$isShow:Z

    if-eqz v0, :cond_1

    .line 2459
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2460
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->val$isDayUIMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0805b4

    goto :goto_0

    :cond_0
    const v1, 0x7f0805b5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2464
    :goto_1
    return-void
.end method
