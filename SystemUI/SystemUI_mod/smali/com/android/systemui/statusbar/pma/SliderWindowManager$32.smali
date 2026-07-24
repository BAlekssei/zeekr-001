.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;
.super Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAdd(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1870
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "vh"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1879
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->startDrag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1880
    return-void
.end method

.method public showAppDeleteBin(Ljava/lang/Boolean;II)V
    .locals 5
    .param p1, "isShow"    # Ljava/lang/Boolean;
    .param p2, "position"    # I
    .param p3, "state"    # I

    .line 1884
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1885
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1886
    if-nez p3, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v3, "\u5378\u8f7d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v3, "\u79fb\u9664"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    :goto_0
    const/4 v0, 0x7

    const/16 v3, 0x152

    if-ge p2, v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    mul-int/lit16 v4, p2, 0xe6

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setX(F)V

    .line 1893
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v3, 0x439a0000    # 308.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_1

    .line 1894
    :cond_1
    const/16 v0, 0xe

    if-ge p2, v0, :cond_2

    .line 1895
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    add-int/lit8 v4, p2, -0x7

    mul-int/lit16 v4, v4, 0xe6

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setX(F)V

    .line 1896
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v3, 0x44048000    # 530.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_1

    .line 1898
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    add-int/lit8 v4, p2, -0xe

    mul-int/lit16 v4, v4, 0xe6

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setX(F)V

    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v3, 0x443c0000    # 752.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 1901
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow(Z)V

    .line 1903
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1905
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 1906
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1907
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow(Z)V

    .line 1909
    :goto_2
    return-void
.end method

.method public translateDeleteBin()V
    .locals 2

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$32;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1915
    return-void
.end method
