.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAwakeMode(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$isDay:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2567
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->val$show:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->val$isDay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2570
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->val$show:Z

    if-eqz v0, :cond_1

    .line 2571
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->val$isDay:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800e9

    goto :goto_0

    :cond_0
    const v1, 0x7f0800ea

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2572
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2400()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 2574
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    .line 2576
    :goto_1
    return-void
.end method
