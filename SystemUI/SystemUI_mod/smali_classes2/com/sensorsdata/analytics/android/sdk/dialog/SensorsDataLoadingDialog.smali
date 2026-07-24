.class public Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;
.super Landroid/app/Dialog;
.source "SensorsDataLoadingDialog.java"


# instance fields
.field private mLoadingLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private initAnim()V
    .locals 8

    .line 98
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 99
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 100
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->mLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 103
    return-void
.end method

.method private initView()V
    .locals 5

    .line 73
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_rotate_layout:I

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->mLoadingLayout:Landroid/widget/RelativeLayout;

    .line 74
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensorsdata_analytics_loading_image1:I

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "imageView1":Landroid/widget/ImageView;
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensorsdata_analytics_loading_image2:I

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, "imageView2":Landroid/widget/ImageView;
    sget v2, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensorsdata_analytics_loading_image3:I

    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 77
    .local v2, "imageView3":Landroid/widget/ImageView;
    sget v3, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensorsdata_analytics_loading_image4:I

    invoke-virtual {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 78
    .local v3, "imageView4":Landroid/widget/ImageView;
    const-string v4, "#00C48E"

    invoke-direct {p0, v0, v4}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->setCircleBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 79
    const-string v4, "#33D0A5"

    invoke-direct {p0, v1, v4}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->setCircleBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 80
    const-string v4, "#CCF3E8"

    invoke-direct {p0, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->setCircleBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 81
    const-string v4, "#80E1C6"

    invoke-direct {p0, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->setCircleBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->initAnim()V

    .line 83
    return-void
.end method

.method private setCircleBackground(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 87
    .local v0, "ovalShape":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 88
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->requestWindowFeature(I)Z

    .line 53
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$layout;->sensors_analytics_dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->setCancelable(Z)V

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 58
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42c40000    # 98.0f

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 63
    .local v3, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 64
    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->initView()V

    .line 70
    return-void
.end method
