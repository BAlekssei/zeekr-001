.class Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;
.super Landroid/os/Handler;
.source "AppItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/applist/AppItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 1073
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1076
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->appInfo:Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getInstall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$300(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1083
    return-void

    .line 1085
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6$1;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$300(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$6;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1079
    nop

    .line 1104
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1105
    return-void
.end method
