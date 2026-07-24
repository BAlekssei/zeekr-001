.class Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;
.super Landroid/os/Handler;
.source "NavigationBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/16 v2, 0x9

    if-eq v0, v2, :cond_8

    const/4 v2, -0x1

    const/4 v3, -0x2

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAppListSlider()V

    .line 217
    goto/16 :goto_4

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v6}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    goto/16 :goto_4

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v6}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v7}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    goto/16 :goto_4

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v6}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    goto :goto_2

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$200(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    goto :goto_4

    .line 172
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v6}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    goto :goto_3

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v7}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 177
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$200(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    goto :goto_4

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isTopActivityExterior(Z)V

    goto :goto_4

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    .line 222
    :cond_a
    :goto_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 223
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
