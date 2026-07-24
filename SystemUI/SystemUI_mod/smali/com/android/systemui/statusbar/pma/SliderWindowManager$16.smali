.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 935
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, "count":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, -0x6

    const/high16 v3, 0x42680000    # 58.0f

    const-wide/16 v4, 0x50

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 956
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 957
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    if-le v1, v8, :cond_1

    .line 958
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setLastClimateShift(I)V

    .line 959
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v1

    if-nez v1, :cond_0

    .line 960
    return v9

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 963
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 965
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 966
    return v9

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setLastClimateShift(I)V

    .line 970
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 971
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 972
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 974
    :cond_2
    const/4 v0, 0x0

    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 976
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    goto/16 :goto_6

    .line 978
    :cond_3
    move v1, v0

    .line 979
    .local v1, "preCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 980
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLastClimateShift()I

    move-result v2

    if-gt v2, v8, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-le v2, v8, :cond_7

    .line 981
    :cond_5
    add-int/2addr v0, v8

    .line 982
    if-le v0, v6, :cond_6

    goto :goto_0

    :cond_6
    move v6, v0

    :goto_0
    move v0, v6

    goto :goto_2

    .line 984
    :cond_7
    if-le v0, v8, :cond_8

    goto :goto_1

    :cond_8
    move v8, v0

    :goto_1
    move v0, v8

    .line 986
    :goto_2
    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-eq v2, v0, :cond_9

    .line 987
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 988
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 990
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 991
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 993
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 995
    .end local v1    # "preCount":I
    goto/16 :goto_6

    .line 998
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 1001
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 1004
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    goto :goto_6

    .line 941
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 942
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 945
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 946
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLastClimateShift()I

    move-result v1

    if-gt v1, v8, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    if-le v1, v8, :cond_e

    .line 947
    :cond_c
    add-int/2addr v0, v8

    .line 948
    if-le v0, v6, :cond_d

    goto :goto_3

    :cond_d
    move v6, v0

    :goto_3
    move v0, v6

    goto :goto_5

    .line 950
    :cond_e
    if-le v0, v8, :cond_f

    goto :goto_4

    :cond_f
    move v8, v0

    :goto_4
    move v0, v8

    .line 952
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)I

    .line 953
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$16;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 954
    nop

    .line 1007
    :goto_6
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
