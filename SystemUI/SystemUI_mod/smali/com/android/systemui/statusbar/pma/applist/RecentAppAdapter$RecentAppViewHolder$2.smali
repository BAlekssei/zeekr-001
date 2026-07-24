.class Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;
.super Ljava/lang/Object;
.source "RecentAppAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 234
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$002(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;F)F

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$100(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->appIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$2;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$000(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getColorFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    :cond_0
    return-void
.end method
