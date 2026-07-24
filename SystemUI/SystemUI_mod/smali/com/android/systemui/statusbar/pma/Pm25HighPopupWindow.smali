.class public Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "Pm25HighPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z

.field private static isAqiViliable:Z

.field private static isDayOrNight:Z

.field private static isWorking:Z


# instance fields
.field private arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

.field private isCO2Auto:Z

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

.field private mAQSCO2AutoIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAQSCO2Icons:Ljava/util/List;
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

.field private mAqiCO2Level:I

.field private mAqiPositionX:I

.field private mAqiState:I

.field private mAqsLeaf:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mFrontArrows:Landroid/widget/ImageView;

.field private mImgAqsContent:Landroid/widget/ImageView;

.field private mImgCO2Level:Landroid/widget/ImageView;

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

.field private mTvCO2Content:Landroid/widget/TextView;

.field private mTvCO2Inside:Landroid/widget/TextView;

.field private mTvPm25:Landroid/widget/TextView;

.field private mTvPm25Content:Landroid/widget/TextView;

.field private mTvPm25Inside:Landroid/widget/TextView;

.field private mTvμg:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->DEBUG:Z

    .line 94
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isAqiViliable:Z

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isWorking:Z

    .line 112
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSVentIcons:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSArrowIcons:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiPositionX:I

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->initRecycleIcons()V

    .line 126
    const/16 v0, 0x224

    const/16 v1, 0x2e0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->updateAnimation(II)Z

    .line 127
    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 320
    .local v0, "locales":Landroid/os/LocaleList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 321
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->language:Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->language:Ljava/lang/String;

    return-object v2
.end method

.method private initRecycleIcons()V
    .locals 8

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, "pm25VentIcons":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 170
    .local v1, "aqsArrowIcons":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 171
    .local v2, "co2Level":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 173
    .local v3, "co2AutoLevel":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 174
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSVentIcons:Ljava/util/List;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    .end local v5    # "i":I
    :cond_0
    move v5, v4

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 178
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSArrowIcons:Ljava/util/List;

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "i":I
    :cond_1
    move v5, v4

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 185
    .end local v5    # "i":I
    :cond_2
    nop

    .local v4, "i":I
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 186
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 189
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    return-void
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 204
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 205
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 207
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 208
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 211
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 212
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 213
    const/16 v2, 0x2e0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 214
    iget v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiPositionX:I

    add-int/lit8 v2, v2, -0x16

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 215
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    return-void
.end method


# virtual methods
.method public changeAQSLeafs(I)V
    .locals 3
    .param p1, "AQIStatus"    # I

    .line 326
    const/4 v0, 0x4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    if-ne p1, v0, :cond_2

    .line 331
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 337
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    const v1, 0x7f0803b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    :goto_0
    return-void
.end method

.method public changeTheme(I)V
    .locals 6
    .param p1, "value"    # I

    .line 220
    const v0, 0x7f0803f4

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 221
    sput-boolean v3, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Content:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f080491

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAirQuality:Landroid/widget/TextView;

    const v4, -0xc7c5c3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25:Landroid/widget/TextView;

    const v5, -0x66c7c5c3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Inside:Landroid/widget/TextView;

    const v5, -0x66c7c5c2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Inside:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Content:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqs:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v5, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isWorking:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0803b2

    goto :goto_0

    :cond_0
    const v5, 0x7f0803b0

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mOpenClimate:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mOpenClimate:Landroid/widget/Button;

    const v3, 0x7f0800f0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0803f5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setIndicatorColor(I)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, "co2Level":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 244
    .local v1, "co2AutoLevel":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 250
    :cond_3
    move v3, v2

    .local v3, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 251
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    .end local v3    # "i":I
    :cond_4
    nop

    .local v2, "i":I
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 257
    .end local v0    # "co2Level":Landroid/content/res/TypedArray;
    .end local v1    # "co2AutoLevel":Landroid/content/res/TypedArray;
    .end local v2    # "i":I
    :cond_5
    goto/16 :goto_8

    .line 258
    :cond_6
    sput-boolean v2, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    .line 259
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Content:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f080492

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v3, :cond_7

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f0803f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 263
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAirQuality:Landroid/widget/TextView;

    const v3, -0x4b4642

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Inside:Landroid/widget/TextView;

    const v4, -0x664b4642

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Inside:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Content:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqs:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isWorking:Z

    if-eqz v3, :cond_8

    const v3, 0x7f0803b3

    goto :goto_5

    :cond_8
    const v3, 0x7f0803b1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mOpenClimate:Landroid/widget/Button;

    const v3, -0xd7d7d2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mOpenClimate:Landroid/widget/Button;

    const v3, 0x7f0800f1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setIndicatorColor(I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .restart local v0    # "co2Level":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 281
    .restart local v1    # "co2AutoLevel":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 282
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 284
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 285
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 287
    :cond_a
    move v3, v2

    .restart local v3    # "i":I
    :goto_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 288
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 291
    .end local v3    # "i":I
    :cond_b
    nop

    .restart local v2    # "i":I
    :goto_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 292
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 296
    .end local v0    # "co2Level":Landroid/content/res/TypedArray;
    .end local v1    # "co2AutoLevel":Landroid/content/res/TypedArray;
    .end local v2    # "i":I
    :cond_c
    :goto_8
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgCO2Level:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isCO2Auto:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiCO2Level:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_9
    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_a

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiCO2Level:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_b

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "Pm25PopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception mAqiCO2Level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiCO2Level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 301
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiState:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPopupAQSColorShow(ZI)V

    .line 302
    return-void
.end method

.method public getAQSDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "AQIStatus"    # I

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 435
    .local v1, "resultString":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_2

    .line 440
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isWorking:Z

    .line 441
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

    .line 442
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0803b2

    goto :goto_1

    :cond_2
    const v3, 0x7f0803b3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 436
    :cond_3
    :goto_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isWorking:Z

    .line 437
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

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isDayOrNight:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0803b0

    goto :goto_4

    :cond_5
    const v3, 0x7f0803b1

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
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

    .line 445
    return-object v1
.end method

.method public getCO2Description()Ljava/lang/String;
    .locals 2

    .line 401
    const-string v0, ""

    .line 402
    .local v0, "resultString":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiCO2Level:I

    packed-switch v1, :pswitch_data_0

    .line 416
    const-string/jumbo v0, "\u672a\u83b7\u53d6\u6570\u636e"

    goto :goto_0

    .line 413
    :pswitch_0
    const-string/jumbo v0, "\u9ad8"

    .line 414
    goto :goto_0

    .line 410
    :pswitch_1
    const-string/jumbo v0, "\u8f83\u9ad8"

    .line 411
    goto :goto_0

    .line 407
    :pswitch_2
    const-string/jumbo v0, "\u9002\u4e2d"

    .line 408
    goto :goto_0

    .line 404
    :pswitch_3
    const-string/jumbo v0, "\u4f4e"

    .line 405
    nop

    .line 419
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isCO2Auto:Z

    if-eqz v1, :cond_0

    .line 420
    const-string/jumbo v0, "\u81ea\u52a8\u6362\u6c14\u4e2d"

    .line 422
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPm25Description(I)Ljava/lang/String;
    .locals 3
    .param p1, "pm25Status"    # I

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 371
    .local v1, "resultString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 391
    :pswitch_0
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v2, ""

    move-object v1, v2

    .line 392
    goto/16 :goto_6

    .line 388
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

    .line 389
    goto :goto_6

    .line 385
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

    .line 386
    goto :goto_6

    .line 382
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

    .line 383
    goto :goto_6

    .line 379
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

    .line 380
    goto :goto_6

    .line 376
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

    .line 377
    goto :goto_6

    .line 373
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

    .line 374
    goto :goto_6

    .line 394
    :pswitch_7
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v2, "--"

    move-object v1, v2

    .line 397
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

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a033a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    const-string v0, "laucher_statusbar_open_ac"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jerry.pma.climate.openClimate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 312
    nop

    .line 316
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 131
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f0d0131

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setContentView(I)V

    .line 133
    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Content:Landroid/view/View;

    .line 134
    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Vent:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f0a04d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0a04da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Inside:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0a04b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Inside:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0a04a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAirQuality:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0a0203

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    .line 142
    const v0, 0x7f0a04d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0a04b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Content:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0a04ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgAqsContent:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgCO2Level:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0a0371

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Inside:Landroid/view/View;

    .line 148
    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mOpenClimate:Landroid/widget/Button;

    .line 149
    const v0, 0x7f0a0379

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    .line 150
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    .line 151
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25CarImg:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0a04ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqs:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a04ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvμg:Landroid/widget/TextView;

    .line 154
    const/16 v0, 0x2e0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->paramsHeight:I

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Content:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setOpenAnimationView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mOpenClimate:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$xeg1eZxh_yJ9TAE6Hri_3QECBMk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$xeg1eZxh_yJ9TAE6Hri_3QECBMk;-><init>(Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setIndicatorColor(I)V

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->initView(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isAqiViliable:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->drawPm25View(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiState:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPopupAQSColorShow(ZI)V

    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25State:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setFrontVentColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Level:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPm25Level(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Visible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPm25Visible(Z)V

    .line 165
    return-void
.end method

.method public setFrontVentColor(I)V
    .locals 4
    .param p1, "pm25Value"    # I

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "pm25State":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 490
    const/4 v0, -0x1

    .line 492
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 494
    const/4 v0, 0x6

    .line 496
    :cond_1
    if-ltz p1, :cond_2

    const/16 v2, 0x23

    if-gt p1, v2, :cond_2

    .line 497
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :cond_2
    const/16 v2, 0x24

    if-lt p1, v2, :cond_3

    const/16 v2, 0x4b

    if-gt p1, v2, :cond_3

    .line 499
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :cond_3
    const/16 v2, 0x4c

    if-lt p1, v2, :cond_4

    const/16 v2, 0x73

    if-gt p1, v2, :cond_4

    .line 501
    const/4 v0, 0x2

    goto :goto_0

    .line 502
    :cond_4
    const/16 v2, 0x74

    if-lt p1, v2, :cond_5

    const/16 v2, 0x96

    if-gt p1, v2, :cond_5

    .line 503
    const/4 v0, 0x3

    goto :goto_0

    .line 504
    :cond_5
    const/16 v2, 0x97

    const/16 v3, 0xfa

    if-lt p1, v2, :cond_6

    if-gt p1, v3, :cond_6

    .line 505
    const/4 v0, 0x4

    goto :goto_0

    .line 506
    :cond_6
    if-lt p1, v3, :cond_7

    if-ge p1, v1, :cond_7

    .line 507
    const/4 v0, 0x5

    .line 509
    :cond_7
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25State:I

    .line 510
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 511
    const-string v1, "Pm25PopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFrontVentColor: pm25State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Vent:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSVentIcons:Ljava/util/List;

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

    .line 514
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25Content:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getPm25Description(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    return-void
.end method

.method public setPm25Level(Ljava/lang/String;)V
    .locals 1
    .param p1, "aqi"    # Ljava/lang/String;

    .line 456
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Level:Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method

.method public setPm25Value(I)V
    .locals 3
    .param p1, "pm25Value"    # I

    .line 461
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->changeAngle(I)V

    .line 467
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isAqiViliable:Z

    goto :goto_0

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Load:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView2;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvPm25:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->changeAngle(I)V

    .line 474
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isAqiViliable:Z

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvμg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isAqiViliable:Z

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->arcDragView:Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->changeAngle(I)V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25ViewForPMA:Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;

    sget-boolean v1, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isAqiViliable:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->drawPm25View(Z)V

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setFrontVentColor(I)V

    .line 484
    return-void
.end method

.method public setPm25Visible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 450
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Visible:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mPm25Inside:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    return-void
.end method

.method public setPopupAQSColor(II)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "auto"    # I

    .line 426
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isCO2Auto:Z

    .line 427
    iput p1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiCO2Level:I

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvCO2Content:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getCO2Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mImgCO2Level:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->isCO2Auto:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2AutoIcons:Ljava/util/List;

    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAQSCO2Icons:Ljava/util/List;

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    return-void
.end method

.method public setPopupAQSColorShow(ZI)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "AQIStatus"    # I

    .line 348
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mVisible:Z

    .line 349
    iput p2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiState:I

    .line 350
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

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 352
    if-ne p2, v1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mFrontArrows:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqsLeaf:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqs:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mTvAqsContent:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getAQSDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->changeAQSLeafs(I)V

    .line 366
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 3
    .param p1, "aqiPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 196
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->DEBUG:Z

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

    .line 197
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->mAqiPositionX:I

    .line 198
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->initView(Z)V

    .line 199
    return-void
.end method
