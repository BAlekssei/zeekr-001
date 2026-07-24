.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;
.super Landroid/os/Handler;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
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

    .line 2108
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2111
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x8

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 2149
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setEnable(Z)V

    .line 2150
    goto/16 :goto_1

    .line 2146
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/HeatVentilationSliderAdapter;->setEnable(Z)V

    .line 2147
    goto/16 :goto_1

    .line 2152
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 2153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow(Z)V

    .line 2158
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 2159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_5

    .line 2161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2162
    .local v0, "position":I
    const/16 v2, 0x150

    if-ge v0, v1, :cond_0

    .line 2163
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    mul-int/lit16 v3, v0, 0xe6

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 2164
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x430c0000    # 140.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 2165
    :cond_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2166
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    add-int/lit8 v3, v0, -0x7

    mul-int/lit16 v3, v3, 0xe6

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 2167
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x43ae0000    # 348.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 2169
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    add-int/lit8 v3, v0, -0xe

    mul-int/lit16 v3, v3, 0xe6

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 2170
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x440b0000    # 556.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 2172
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2173
    .end local v0    # "position":I
    goto :goto_1

    .line 2113
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppListSlider()V

    .line 2114
    goto :goto_1

    .line 2123
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverTempAll()V

    .line 2124
    goto :goto_1

    .line 2127
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerTempAll()V

    .line 2128
    goto :goto_1

    .line 2131
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverHeatAll()V

    .line 2132
    goto :goto_1

    .line 2135
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerHeatAll()V

    .line 2136
    goto :goto_1

    .line 2139
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeVolumeAll()V

    .line 2140
    goto :goto_1

    .line 2143
    :cond_2
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeClimateSliderAll()V

    .line 2144
    goto :goto_1

    .line 2116
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_4

    .line 2117
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2119
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$35;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppList()V

    .line 2120
    nop

    .line 2179
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
