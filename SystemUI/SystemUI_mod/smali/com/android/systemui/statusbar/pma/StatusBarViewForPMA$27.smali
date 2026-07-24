.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setDvrState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$dvrState:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2062
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->val$dvrState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2065
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->val$dvrState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->val$dvrState:I

    if-ltz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->val$dvrState:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2068
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v1, :cond_2

    const v1, 0x7f080609

    goto :goto_2

    :cond_2
    const v1, 0x7f08060a

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2069
    return-void
.end method
