.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openSliderInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 3299
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3302
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSliderInternal: scrollOverLayout is null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , appTabSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 3303
    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3302
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    const/4 v0, 0x0

    .line 3305
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3306
    const-string v1, "SliderWindowManager"

    const-string/jumbo v2, "run: viewPager is not exist."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    return-void

    .line 3309
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 3310
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    goto :goto_1

    .line 3312
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$39;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 3314
    :goto_1
    if-eqz v0, :cond_3

    .line 3315
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 3317
    :cond_3
    return-void
.end method
