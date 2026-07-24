.class public Lcom/android/systemui/qs/tiles/UserDetailItemView;
.super Landroid/widget/LinearLayout;
.source "UserDetailItemView.java"


# static fields
.field protected static layoutResId:I


# instance fields
.field private mActivatedTypeface:Landroid/graphics/Typeface;

.field private mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

.field private mName:Landroid/widget/TextView;

.field private mRegularTypeface:Landroid/graphics/Typeface;

.field private mRestrictedPadlock:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const v0, 0x7f0d0179

    sput v0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->layoutResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    sget-object v0, Lcom/android/systemui/R$styleable;->UserDetailItemView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 70
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 72
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    .end local v4    # "attr":I
    goto :goto_1

    .line 74
    .restart local v4    # "attr":I
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    .line 75
    goto :goto_1

    .line 77
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    .line 70
    .end local v4    # "attr":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 86
    instance-of v0, p1, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-nez v0, :cond_0

    .line 87
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/qs/tiles/UserDetailItemView;->layoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    return-object v0
.end method

.method private updateTypeface()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->getDrawableState()[I

    move-result-object v0

    const v1, 0x10102fe

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 146
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/Bitmap;
    .param p3, "userId"    # I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatarWithBadge(Landroid/graphics/Bitmap;I)V

    .line 96
    return-void
.end method

.method public bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userId"    # I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 101
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->updateTypeface()V

    .line 142
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 134
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    const v1, 0x7f07039f

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 120
    const v0, 0x7f0a0513

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 121
    const v0, 0x7f0a0511

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->updateTypeface()V

    .line 129
    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    .line 130
    return-void
.end method

.method public setAvatarEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method public setDisabledByAdmin(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setEnabled(Z)V

    .line 111
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setEnabled(Z)V

    .line 116
    return-void
.end method
