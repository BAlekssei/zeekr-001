.class Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TunablePaddingTagListener"
.end annotation


# instance fields
.field private final mId:I

.field private final mPadding:I

.field private mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 495
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunablePadding;->destroy()V

    .line 498
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mId:I

    if-eqz v1, :cond_1

    .line 500
    iget v1, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    :cond_1
    const-string/jumbo v1, "sysui_rounded_content_padding"

    iget v2, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mPadding:I

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    .line 504
    return-void
.end method
