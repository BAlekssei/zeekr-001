.class public Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;
.super Landroid/widget/FrameLayout;
.source "PmaPopupUserButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImgView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->mImgView:Landroid/widget/ImageView;

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->mTextView:Landroid/widget/TextView;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0146

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->mContext:Landroid/content/Context;

    .line 26
    const v0, 0x7f0a01eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->mImgView:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaPopupUserButton;->mTextView:Landroid/widget/TextView;

    .line 28
    return-void
.end method
