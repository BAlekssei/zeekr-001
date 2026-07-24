.class Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 722
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$300(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$400(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$300(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$4;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 732
    :cond_0
    return-void
.end method
