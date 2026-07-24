.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAccountPhoto(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$photoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 876
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$photoUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 894
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    :cond_0
    return-void
.end method

.method public static synthetic lambda$run$1(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "idBitmap"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 905
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 908
    :cond_0
    return-void
.end method

.method public static synthetic lambda$run$2(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;Ljava/lang/String;)V
    .locals 3
    .param p1, "idBitmap"    # Ljava/lang/String;

    .line 911
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08063f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;J)J

    .line 880
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 881
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$photoUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 882
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 883
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 885
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$photoUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getUrlToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 886
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;J)J

    .line 887
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    if-eqz v2, :cond_0

    .line 888
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v5, v5, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    :cond_0
    const/16 v1, 0xa

    if-eqz v2, :cond_1

    .line 891
    const-string v3, "StatusBarViewForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAccountPhoto getUrlToDrawable!=null ,photoUrl=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$photoUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$15$8cMurJRp44kGpTWHPaBtLad-skg;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$15$8cMurJRp44kGpTWHPaBtLad-skg;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 899
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$id:Ljava/lang/String;

    .line 900
    .local v5, "idBitmap":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$900()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->val$photoUrl:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getFileToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 902
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const-string v7, "StatusBarViewForPMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAccountPhoto getFileToBitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", isAlreadyLogin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$800()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", idBitmap.equals(mCurrentId) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    if-eqz v6, :cond_2

    .line 904
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$15$dhYm_eE6hvDlHFk1-uI4tbjyEEg;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$15$dhYm_eE6hvDlHFk1-uI4tbjyEEg;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 910
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    new-instance v8, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$15$S7CDT2hRi8oPwx7o87cZUHZYKS0;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$15$S7CDT2hRi8oPwx7o87cZUHZYKS0;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 915
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v7, v7, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 919
    .end local v5    # "idBitmap":Ljava/lang/String;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void
.end method
