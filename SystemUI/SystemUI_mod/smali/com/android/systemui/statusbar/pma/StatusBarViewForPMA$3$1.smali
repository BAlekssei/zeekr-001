.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    .line 537
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 544
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 541
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 542
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_GET_USER_NET_COMNNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;->val$url:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$3$1$oiRny0tibcBZHY9n58eIldQAKRc;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$3$1$oiRny0tibcBZHY9n58eIldQAKRc;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3$1;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;->post(Ljava/lang/Runnable;)Z

    .line 549
    :cond_0
    return-void
.end method
