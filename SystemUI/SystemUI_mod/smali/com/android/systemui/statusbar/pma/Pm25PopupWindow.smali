.class public Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "Pm25PopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z

.field private static isAqiViliable:Z

.field private static isDayOrNight:Z

.field private static isWorking:Z


# instance fields
.field private arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

.field private language:Ljava/lang/String;

.field private mAQSArrowIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAQSVentIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAqiPositionX:I

.field private mAqiState:I

.field private mAqsLeaf:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mFrontArrows:Landroid/widget/ImageView;

.field private mImgAqsContent:Landroid/widget/ImageView;

.field private mOpenClimate:Landroid/widget/Button;

.field private mPm25CarImg:Landroid/widget/ImageView;

.field private mPm25Content:Landroid/view/View;

.field private mPm25Inside:Landroid/view/View;

.field private mPm25Level:Ljava/lang/String;

.field private mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

.field private mPm25State:I

.field private mPm25Vent:Landroid/widget/ImageView;

.field private mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

.field private mPm25Visible:Z

.field private mTvAirQuality:Landroid/widget/TextView;

.field private mTvAqs:Landroid/widget/TextView;

.field private mTvAqsContent:Landroid/widget/TextView;

.field private mTvPm25:Landroid/widget/TextView;

.field private mTvPm25Content:Landroid/widget/TextView;

.field private mTvPm25Inside:Landroid/widget/TextView;

.field private mTvμg:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->DEBUG:Z

    .line 109
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isAqiViliable:Z

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isWorking:Z

    .line 121
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAQSVentIcons:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAQSArrowIcons:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqiPositionX:I

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->initRecycleIcons()V

    .line 134
    const/16 v0, 0x224

    const/16 v1, 0x2e0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->updateAnimation(II)Z

    .line 135
    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 271
    .local v0, "locales":Landroid/os/LocaleList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 272
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->language:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->language:Ljava/lang/String;

    return-object v2
.end method

.method private initRecycleIcons()V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, "pm25VentIcons":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 176
    .local v1, "aqsArrowIcons":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAQSVentIcons:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v3    # "i":I
    :cond_0
    nop

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAQSArrowIcons:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    return-void
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 197
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 198
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 200
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 201
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 205
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    const/16 v2, 0x2e0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    iget v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqiPositionX:I

    add-int/lit8 v2, v2, -0x16

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 208
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 210
    return-void
.end method


# virtual methods
.method public changeAQSLeafs(I)V
    .locals 3
    .param p1, "AQIStatus"    # I

    .line 277
    const/4 v0, 0x4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    if-ne p1, v0, :cond_2

    .line 282
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 288
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    :goto_0
    return-void
.end method

.method public changeTheme(I)V
    .locals 5
    .param p1, "value"    # I

    .line 213
    const v0, 0x7f0803f4

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v1, :cond_2

    .line 214
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Content:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f080491

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAirQuality:Landroid/widget/TextView;

    const v3, -0xc7c5c3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25:Landroid/widget/TextView;

    const v4, -0x66c7c5c3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Inside:Landroid/widget/TextView;

    const-string v4, "#99383a3e"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqs:Landroid/widget/TextView;

    const-string v4, "#99383a3e"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v4, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isWorking:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0803b2

    goto :goto_0

    :cond_0
    const v4, 0x7f0803b0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mOpenClimate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mOpenClimate:Landroid/widget/Button;

    const v2, 0x7f0800f0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 225
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0803f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setIndicatorColor(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 233
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Content:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f080492

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v1, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0803f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAirQuality:Landroid/widget/TextView;

    const v1, -0x4b4642

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Inside:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isWorking:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0803b3

    goto :goto_3

    :cond_4
    const v1, 0x7f0803b1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mOpenClimate:Landroid/widget/Button;

    const v1, -0xd7d7d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mOpenClimate:Landroid/widget/Button;

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setIndicatorColor(I)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqiState:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPopupAQSColorShow(ZI)V

    .line 253
    return-void
.end method

.method public getAQSDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "AQIStatus"    # I

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 354
    .local v1, "resultString":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_2

    .line 359
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isWorking:Z

    .line 360
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Working"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "\u5de5\u4f5c\u4e2d"

    :goto_0
    move-object v1, v2

    .line 361
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0803b2

    goto :goto_1

    :cond_2
    const v3, 0x7f0803b3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 355
    :cond_3
    :goto_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isWorking:Z

    .line 356
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Not Working"

    goto :goto_3

    :cond_4
    const-string/jumbo v2, "\u672a\u5de5\u4f5c"

    :goto_3
    move-object v1, v2

    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isDayOrNight:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0803b0

    goto :goto_4

    :cond_5
    const v3, 0x7f0803b1

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    :goto_5
    const-string v2, "Pm25PopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAQSDescription resultString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-object v1
.end method

.method public getPm25Description(I)Ljava/lang/String;
    .locals 3
    .param p1, "pm25Status"    # I

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 322
    .local v1, "resultString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 342
    :pswitch_0
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v2, ""

    move-object v1, v2

    .line 343
    goto/16 :goto_6

    .line 339
    :pswitch_1
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Hazardous"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u4e25\u91cd\u6c61\u67d3"

    :goto_0
    move-object v1, v2

    .line 340
    goto :goto_6

    .line 336
    :pswitch_2
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Very unhealthy"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "\u91cd\u5ea6\u6c61\u67d3"

    :goto_1
    move-object v1, v2

    .line 337
    goto :goto_6

    .line 333
    :pswitch_3
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Unhealthy"

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "\u4e2d\u5ea6\u6c61\u67d3"

    :goto_2
    move-object v1, v2

    .line 334
    goto :goto_6

    .line 330
    :pswitch_4
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Medium pollution"

    goto :goto_3

    :cond_3
    const-string/jumbo v2, "\u8f7b\u5ea6\u6c61\u67d3"

    :goto_3
    move-object v1, v2

    .line 331
    goto :goto_6

    .line 327
    :pswitch_5
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Low pollution"

    goto :goto_4

    :cond_4
    const-string/jumbo v2, "\u826f"

    :goto_4
    move-object v1, v2

    .line 328
    goto :goto_6

    .line 324
    :pswitch_6
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Good"

    goto :goto_5

    :cond_5
    const-string/jumbo v2, "\u4f18"

    :goto_5
    move-object v1, v2

    .line 325
    goto :goto_6

    .line 345
    :pswitch_7
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v2, "--"

    move-object v1, v2

    .line 348
    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a033a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "laucher_statusbar_open_ac"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jerry.pma.climate.openClimate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 263
    nop

    .line 267
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 139
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f0d0130

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setContentView(I)V

    .line 141
    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Content:Landroid/view/View;

    .line 142
    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Vent:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0a04d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0a04da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Inside:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0a04a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAirQuality:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0a0203

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    .line 149
    const v0, 0x7f0a04d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0a04ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0a0371

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Inside:Landroid/view/View;

    .line 153
    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mOpenClimate:Landroid/widget/Button;

    .line 154
    const v0, 0x7f0a0379

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    .line 155
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    .line 156
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0a04ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqs:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0a04ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvμg:Landroid/widget/TextView;

    .line 159
    const/16 v0, 0x2e0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->paramsHeight:I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Content:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mOpenClimate:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Tpc6d5h8dt3hue7WmaTeXA3zWik;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Tpc6d5h8dt3hue7WmaTeXA3zWik;-><init>(Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setIndicatorColor(I)V

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->initView(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isAqiViliable:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->drawPm25View(Z)V

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqiState:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPopupAQSColorShow(ZI)V

    .line 167
    iget v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25State:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setFrontVentColor(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Level:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPm25Level(Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Visible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPm25Visible(Z)V

    .line 170
    return-void
.end method

.method public setFrontVentColor(I)V
    .locals 4
    .param p1, "pm25Value"    # I

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "pm25State":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 409
    const/4 v0, -0x1

    .line 411
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 413
    const/4 v0, 0x6

    .line 415
    :cond_1
    if-ltz p1, :cond_2

    const/16 v2, 0x23

    if-gt p1, v2, :cond_2

    .line 416
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :cond_2
    const/16 v2, 0x24

    if-lt p1, v2, :cond_3

    const/16 v2, 0x4b

    if-gt p1, v2, :cond_3

    .line 418
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    const/16 v2, 0x4c

    if-lt p1, v2, :cond_4

    const/16 v2, 0x73

    if-gt p1, v2, :cond_4

    .line 420
    const/4 v0, 0x2

    goto :goto_0

    .line 421
    :cond_4
    const/16 v2, 0x74

    if-lt p1, v2, :cond_5

    const/16 v2, 0x96

    if-gt p1, v2, :cond_5

    .line 422
    const/4 v0, 0x3

    goto :goto_0

    .line 423
    :cond_5
    const/16 v2, 0x97

    const/16 v3, 0xfa

    if-lt p1, v2, :cond_6

    if-gt p1, v3, :cond_6

    .line 424
    const/4 v0, 0x4

    goto :goto_0

    .line 425
    :cond_6
    if-lt p1, v3, :cond_7

    if-ge p1, v1, :cond_7

    .line 426
    const/4 v0, 0x5

    .line 428
    :cond_7
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25State:I

    .line 429
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 430
    const-string v1, "Pm25PopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFrontVentColor: pm25State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Vent:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAQSVentIcons:Ljava/util/List;

    if-gez v0, :cond_9

    const/4 v3, 0x6

    goto :goto_1

    :cond_9
    move v3, v0

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getPm25Description(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public setPm25Level(Ljava/lang/String;)V
    .locals 1
    .param p1, "aqi"    # Ljava/lang/String;

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Level:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method public setPm25Value(I)V
    .locals 3
    .param p1, "pm25Value"    # I

    .line 380
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setVisibility(I)V

    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->changeAngle(I)V

    .line 386
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isAqiViliable:Z

    goto :goto_0

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setVisibility(I)V

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->changeAngle(I)V

    .line 393
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isAqiViliable:Z

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isAqiViliable:Z

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->changeAngle(I)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->isAqiViliable:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->drawPm25View(Z)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setFrontVentColor(I)V

    .line 403
    return-void
.end method

.method public setPm25Visible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 369
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Visible:Z

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mPm25Inside:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    return-void
.end method

.method public setPopupAQSColorShow(ZI)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "AQIStatus"    # I

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mVisible:Z

    .line 300
    iput p2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqiState:I

    .line 301
    const-string v0, "Pm25PopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupAQSColorShow visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", AQIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 303
    if-ne p2, v1, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqs:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getAQSDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->changeAQSLeafs(I)V

    .line 317
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "aqiPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 189
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Pm25PopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionX isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->mAqiPositionX:I

    .line 191
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->initView(Z)V

    .line 192
    return-void
.end method
