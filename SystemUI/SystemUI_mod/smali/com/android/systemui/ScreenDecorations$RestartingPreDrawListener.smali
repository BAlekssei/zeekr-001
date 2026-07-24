.class Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartingPreDrawListener"
.end annotation


# instance fields
.field private final mTargetRotation:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method private constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetRotation"    # I

    .line 772
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    .line 774
    iput p3, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetRotation:I

    .line 775
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/ScreenDecorations;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/systemui/ScreenDecorations$1;

    .line 767
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 781
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetRotation:I

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 787
    const/4 v0, 0x1

    return v0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$302(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 793
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 799
    return v1
.end method
