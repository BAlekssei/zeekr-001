.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12$1;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;

    .line 704
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08067f

    goto :goto_0

    :cond_0
    const v1, 0x7f080680

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2400()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 709
    return-void
.end method
