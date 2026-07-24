.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;
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

    .line 852
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "shift":I
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 858
    return-void

    .line 860
    :cond_0
    const/4 v1, 0x3

    if-nez p2, :cond_3

    .line 861
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 864
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/support/v7/widget/LinearSnapHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    .line 865
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    .line 866
    .local v2, "currentPosition":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    const-string v3, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollStateChanged: currentPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;ZI)V

    .line 871
    sget v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->PASSENGER_ONLY_HEAT_SHOW:I

    sget v4, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mPassengerHeatVentilationAVAI:I

    if-ne v3, v4, :cond_2

    .line 872
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatVentilationShift(I)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v3

    add-int/lit8 v4, v2, -0x3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatVentilationShift(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .end local v2    # "currentPosition":I
    :goto_0
    goto :goto_1

    .line 876
    :catch_0
    move-exception v2

    .line 877
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 878
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_2

    .line 883
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 884
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$9;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    :cond_4
    :goto_2
    return-void
.end method
