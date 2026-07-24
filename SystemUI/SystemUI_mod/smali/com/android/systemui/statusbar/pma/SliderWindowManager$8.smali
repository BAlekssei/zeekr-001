.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->createSliderWindowView()V
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

    .line 814
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 817
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    return-void

    .line 821
    :cond_0
    const/4 v0, 0x2

    if-nez p2, :cond_3

    .line 822
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/v7/widget/LinearSnapHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 826
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    .line 827
    .local v1, "currentPosition":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    const-string v2, "SliderWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScrollStateChanged: currentPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;ZI)V

    .line 831
    sget v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->DRIVER_ONLY_HEAT_SHOW:I

    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mDriverHeatOrVentilationAVAI:I

    if-ne v2, v3, :cond_2

    .line 832
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatVentilationShift(I)V

    goto :goto_0

    .line 834
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatVentilationShift(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .end local v1    # "currentPosition":I
    :goto_0
    goto :goto_1

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 838
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_2

    .line 843
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    const-string v1, "SliderWindowManager.HEAT_VENT"

    const-string v2, "onScrollStateChanged: ELSE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$8;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    :cond_5
    :goto_2
    return-void
.end method
