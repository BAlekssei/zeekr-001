.class Lcom/android/keyguard/KeyguardSliceView$TitleView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedTextView;
.source "KeyguardSliceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 552
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedTextView;-><init>(Landroid/content/Context;)V

    .line 553
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 557
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 560
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 561
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 565
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 566
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 570
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedTextView;->onMeasure(II)V

    .line 572
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$TitleView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 573
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 574
    .local v1, "lineCount":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 575
    .local v2, "ellipsizing":Z
    :goto_0
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$TitleView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 577
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSliceView;->access$100(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 578
    .local v4, "bestLineBreak":Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 579
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSliceView$TitleView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedTextView;->onMeasure(II)V

    .line 583
    .end local v3    # "title":Ljava/lang/CharSequence;
    .end local v4    # "bestLineBreak":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method
