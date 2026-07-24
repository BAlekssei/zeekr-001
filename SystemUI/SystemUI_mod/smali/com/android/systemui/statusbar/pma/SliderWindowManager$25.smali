.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initSaveAppList(Ljava/util/ArrayList;)V
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

    .line 1300
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1324
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 1306
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$25;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3502(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 1319
    :cond_0
    return-void
.end method
