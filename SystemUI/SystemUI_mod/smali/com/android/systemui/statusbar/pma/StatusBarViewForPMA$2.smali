.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setSentryImg(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$enable:Z

.field final synthetic val$isDay:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 435
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->val$enable:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->val$isDay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->val$enable:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->val$isDay:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0802b1

    goto :goto_0

    :cond_0
    const v1, 0x7f0802b2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;->val$isDay:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0802af

    goto :goto_1

    :cond_2
    const v1, 0x7f0802b0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    :goto_2
    return-void
.end method
