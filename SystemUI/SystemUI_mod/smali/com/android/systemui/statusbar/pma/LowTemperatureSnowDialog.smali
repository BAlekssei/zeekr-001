.class public Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "LowTemperatureSnowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private imgCar:Landroid/widget/ImageView;

.field private lowTemp:Landroid/widget/TextView;

.field private lowTempContent:Landroid/widget/TextView;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mDialogBg:Landroid/widget/FrameLayout;

.field private positionX:I

.field private tempRegulation:Landroid/widget/Button;

.field private tempRegulationColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mContext:Landroid/content/Context;

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 61
    const/16 v0, 0x224

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->updateAnimation(II)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 97
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7e8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 98
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 100
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 101
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 106
    const/16 v2, 0x226

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 107
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 108
    iget v2, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->positionX:I

    add-int/lit8 v2, v2, -0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 3
    .param p1, "isDay"    # I

    .line 113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->imgCar:Landroid/widget/ImageView;

    const v1, 0x7f0805d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    const v1, 0x7f0803dd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 116
    const v0, 0x383a3d

    iput v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulationColor:I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTemp:Landroid/widget/TextView;

    const v1, -0xc7c5c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTempContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mDialogBg:Landroid/widget/FrameLayout;

    const v1, 0x7f080491

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->imgCar:Landroid/widget/ImageView;

    const v1, 0x7f0805d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    const v1, 0x7f0803de

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    const v0, 0xb4beb9

    iput v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulationColor:I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTemp:Landroid/widget/TextView;

    const v1, -0x4b4147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTempContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mDialogBg:Landroid/widget/FrameLayout;

    const v1, 0x7f080492

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulationColor:I

    const/high16 v2, -0x1000000

    :goto_1
    add-int/2addr v1, v2

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulationColor:I

    const/high16 v2, 0x66000000

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setContentView(I)V

    .line 68
    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->imgCar:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0a04c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTemp:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0a02aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mDialogBg:Landroid/widget/FrameLayout;

    .line 72
    const v0, 0x7f0a04c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTempContent:Landroid/widget/TextView;

    .line 73
    const/16 v0, 0x226

    iput v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->paramsHeight:I

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->mDialogBg:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setOpenAnimationView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog$1;-><init>(Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public setBatteryPreheatingChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setTempRegulationEnable(Ljava/lang/Boolean;)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTempContent:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7535\u6c60\u6e29\u5ea6\u4f4e\uff0c\u7535\u6c60\u6027\u80fd\u4e0b\u964d\uff0c\u6b63\u5728\u8c03\u8282\u7535\u6c60\u6e29\u5ea6\u4ee5\u63d0\u9ad8\u7535\u6c60\u6027\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :cond_0
    if-nez p1, :cond_1

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setTempRegulationEnable(Ljava/lang/Boolean;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTempContent:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7535\u6c60\u6e29\u5ea6\u4f4e\uff0c\u7535\u6c60\u6027\u80fd\u4e0b\u964d\uff0c\u82e5\u9700\u63d0\u9ad8\u7535\u6c60\u6027\u80fd\uff0c\u5efa\u8bae\u5f00\u542f\u7535\u6c60\u6e29\u5ea6\u8c03\u8282"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    :goto_0
    return-void
.end method

.method public setBatteryPreheatingEnable(Z)V
    .locals 2
    .param p1, "in"    # Z

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->lowTempContent:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7535\u6c60\u6e29\u5ea6\u4f4e\uff0c\u7535\u6c60\u6027\u80fd\u4e0b\u964d\uff0c\u8f66\u8f86\u63d2\u67aa\u4e2d\uff0c\u7535\u6c60\u6e29\u5ea6\u8c03\u8282\u65e0\u6cd5\u5f00\u542f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setTempRegulationEnable(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setBatteryPreheatingChange(I)V

    .line 155
    :goto_0
    return-void
.end method

.method public setDialogShow()V
    .locals 3

    .line 158
    const-string v0, "LowTemperatureSnowDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialogShow isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 160
    return-void
.end method

.method public setPositionX(IZ)V
    .locals 0
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->positionX:I

    .line 91
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->initView(Z)V

    .line 92
    return-void
.end method

.method public setTempRegulationEnable(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "enable"    # Ljava/lang/Boolean;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulation:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulationColor:I

    const/high16 v2, -0x1000000

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->tempRegulationColor:I

    const/high16 v2, 0x66000000

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 134
    return-void
.end method
