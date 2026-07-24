.class Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;
.super Landroid/os/Handler;
.source "RecentAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 467
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    const v1, 0x40066666    # 2.1f

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$002(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;F)F

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$800(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$100(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$100(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$100(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$5;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$000(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    nop

    .line 483
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 484
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
