.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->createSliderAppListWindowView()V
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

    .line 624
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .line 658
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnTabSelectedListener onTabReselected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "selectText":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "\u5e94\u7528\u4e2d\u5fc3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 663
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 664
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 666
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-lez v2, :cond_0

    .line 665
    move v3, v4

    goto :goto_0

    .line 666
    :cond_0
    nop

    .line 665
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 668
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->setTargetViewPager(Landroidx/viewpager/widget/ViewPager;)V

    goto :goto_2

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 673
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-lez v2, :cond_2

    .line 674
    move v3, v4

    goto :goto_1

    .line 675
    :cond_2
    nop

    .line 674
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->setTargetViewPager(Landroidx/viewpager/widget/ViewPager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_2
    goto :goto_3

    .line 678
    :catch_0
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 681
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_3
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .line 627
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnTabSelectedListener onTabSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "selectText":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "\u5e94\u7528\u4e2d\u5fc3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-lez v2, :cond_0

    .line 634
    move v3, v4

    goto :goto_0

    .line 635
    :cond_0
    nop

    .line 634
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->setTargetViewPager(Landroidx/viewpager/widget/ViewPager;)V

    goto :goto_2

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 641
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 643
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-lez v2, :cond_2

    .line 642
    move v3, v4

    goto :goto_1

    .line 643
    :cond_2
    nop

    .line 642
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 644
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$7;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->setTargetViewPager(Landroidx/viewpager/widget/ViewPager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_2
    goto :goto_3

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 649
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_3
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .line 653
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnTabSelectedListener onTabUnselected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method
