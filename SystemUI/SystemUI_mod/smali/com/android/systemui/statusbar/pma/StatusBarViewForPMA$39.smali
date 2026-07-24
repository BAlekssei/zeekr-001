.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->scenceModeOnChanage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$current:I

.field final synthetic val$isDay:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2596
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->val$current:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->val$isDay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2599
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->val$current:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 2606
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->val$isDay:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08067f

    goto :goto_0

    :cond_0
    const v1, 0x7f080680

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2607
    goto :goto_3

    .line 2603
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->val$isDay:Z

    if-eqz v1, :cond_1

    const v1, 0x7f080700

    goto :goto_1

    :cond_1
    const v1, 0x7f080701

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2604
    goto :goto_3

    .line 2601
    :pswitch_2
    goto :goto_3

    .line 2618
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;->val$isDay:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0800f6

    goto :goto_2

    :cond_3
    const v1, 0x7f0800f7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2621
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
