.class public Lcom/android/systemui/statusbar/pma/ChargePopupWindow;
.super Landroid/app/AlertDialog;
.source "ChargePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final BATTERY_ESTIMATE_TIME_ERROR:F

.field private batteryView:Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;

.field private hour:I

.field private isChargeACCapOn:Z

.field private isChargeDCCapOn:Z

.field private isDay:Z

.field private mACPlugHeadCap:Landroid/widget/ImageView;

.field private mACPlugOpen:Landroid/widget/ImageButton;

.field private mAllmostFullCharged:Landroid/widget/TextView;

.field private mBatteryAcState:I

.field private mBatteryBg:Landroid/view/View;

.field private mBatteryDcState:I

.field private mBatteryFail:I

.field private mBatteryLevel:F

.field private mBtnChargeState:Landroid/widget/Button;

.field private mBtnContent:Landroid/view/View;

.field private mBtnExternalDevice:Landroid/widget/Button;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mChargeACCapAvail:I

.field private mChargeACCapState:I

.field private mChargeDCCapAvail:I

.field private mChargeDCCapState:I

.field private mChargePositionX:I

.field private mChargeSOCLevel:F

.field private mCircleImg:Landroid/widget/ImageView;

.field private mConnectStateView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDCPlugHeadCap:Landroid/widget/ImageView;

.field private mDCPlugOpen:Landroid/widget/ImageButton;

.field private mDisChargeSOCLevel:F

.field private mEnduranceMileage:I

.field private mEstimateTime:F

.field private mImgCar:Landroid/widget/ImageView;

.field private mImgOpen:Landroid/widget/ImageView;

.field private mImgX:Landroid/widget/ImageView;

.field private mMore24Hour:Landroid/view/View;

.field private mPlugACState:I

.field private mPlugDCState:I

.field private mTime:Landroid/view/View;

.field private mTvBatteryLevel:Landroid/widget/TextView;

.field private mTvBatteryLevelUnit:Landroid/widget/TextView;

.field private mTvChargeConnectState:Landroid/widget/TextView;

.field private mTvChargeState:Landroid/widget/TextView;

.field private mTvChargeTitle:Landroid/widget/TextView;

.field private mTvHour:Landroid/widget/TextView;

.field private mTvLeft:Landroid/widget/TextView;

.field private mTvMin:Landroid/widget/TextView;

.field private mTvMinContent:Landroid/view/View;

.field private mTvOpen:Landroid/widget/TextView;

.field private mTvRange:Landroid/widget/TextView;

.field private mTvUnitDis:Landroid/widget/TextView;

.field private mUnitDis:I

.field private mV2LState:I

.field private mV2VState:I

.field private mViewOpen:Landroid/view/View;

.field private min:I

.field private showHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const v0, 0x44ffe000    # 2047.0f

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->BATTERY_ESTIMATE_TIME_ERROR:F

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->hour:I

    .line 98
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->min:I

    .line 99
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2LState:I

    .line 100
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2VState:I

    .line 108
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    .line 109
    iput v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    .line 112
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargePositionX:I

    .line 1398
    new-instance v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow$1;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->showHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    .line 124
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 125
    return-void
.end method

.method private ifInProgress()Z
    .locals 3

    .line 563
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 565
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initView(Z)V
    .locals 3
    .param p1, "isFullScreen"    # Z

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getWindow()Landroid/view/Window;

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
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 207
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x2de

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 208
    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 209
    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargePositionX:I

    add-int/lit16 v2, v2, -0x3c0

    add-int/lit16 v2, v2, 0x131

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 210
    if-eqz p1, :cond_0

    const/16 v2, 0x2c

    goto :goto_0

    :cond_0
    const/16 v2, -0x10

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 212
    return-void
.end method

.method private isAcDcNotplag()Z
    .locals 3

    .line 1345
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1346
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAcDcNotplag getPlugACState()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugACState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "getPlugDCState()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 1347
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugDCState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugACState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugDCState()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openChargePage()V
    .locals 4

    .line 1413
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1414
    const-string v0, "ChargePopupWindow"

    const-string v1, "openChargePage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1417
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.geely.pma.settings"

    const-string v3, "com.geely.pma.settings.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1419
    const-string v2, "ecarx.intent.action.ECARX_CHARGING_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1421
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1422
    return-void
.end method

.method private setACPlugButtonState(I)V
    .locals 3
    .param p1, "acPlugButtonState"    # I

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 845
    const/4 v0, 0x0

    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 847
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 852
    :cond_1
    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 854
    :cond_2
    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 856
    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 858
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 859
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    .line 860
    :cond_4
    const/16 v1, 0x13

    if-ne p1, v1, :cond_5

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 862
    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 865
    :cond_6
    :goto_0
    return-void
.end method

.method private setBgSmall(Z)V
    .locals 6
    .param p1, "isSmall"    # Z

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 751
    .local v0, "window":Landroid/view/Window;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 752
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 753
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, -0x10

    if-eqz p1, :cond_1

    .line 754
    const/16 v4, 0x2e2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 755
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 756
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f080426

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f080425

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 758
    :cond_1
    const/16 v4, 0x3c5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 759
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 760
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f080423

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f080424

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 762
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 764
    return-void
.end method

.method private setBtnChargeStateVisible()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0804cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0804cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_0
    return-void
.end method

.method private setBtnChargeStateVisible(I)V
    .locals 5
    .param p1, "startOrStop"    # I

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0804cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0804cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110406

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 328
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 332
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110408

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 336
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 337
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 341
    :cond_4
    :goto_1
    return-void
.end method

.method private setBtnExternalDeviceText()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110404

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 193
    return-void
.end method

.method private setBtnExternalDeviceVisible(I)V
    .locals 3
    .param p1, "visibleOrGone"    # I

    .line 283
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0804cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0804cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :goto_1
    return-void
.end method

.method private setDCPlugButtonState(I)V
    .locals 3
    .param p1, "dcPlugButtonState"    # I

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 873
    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 874
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 875
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 880
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    .line 881
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 882
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 887
    :cond_3
    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 889
    :cond_4
    const/16 v1, 0xd

    if-ne p1, v1, :cond_5

    .line 890
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 893
    :cond_5
    const/16 v1, 0x12

    if-ne p1, v1, :cond_6

    .line 894
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 895
    :cond_6
    const/16 v0, 0x14

    if-ne p1, v0, :cond_7

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 898
    :cond_7
    :goto_0
    return-void
.end method

.method private setPlugHeadCapState(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, "view":Landroid/widget/ImageView;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugHeadCap:Landroid/widget/ImageView;

    goto :goto_0

    .line 914
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugHeadCap:Landroid/widget/ImageView;

    .line 917
    :cond_1
    :goto_0
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 923
    :pswitch_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    goto :goto_1

    .line 919
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    goto :goto_1

    .line 938
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 934
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    goto :goto_1

    .line 930
    :pswitch_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    goto :goto_1

    .line 926
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    nop

    .line 942
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBatteryState()V
    .locals 17

    .line 572
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 573
    const-string v1, "ChargePopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatteryState:  mPlugACState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPlugDCState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mBatteryAcState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mBatteryDcState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,mBatteryFail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryFail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    const/4 v1, 0x0

    .line 581
    .local v1, "isSmall":Z
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEstimateTime:F

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEstimateTime(F)V

    .line 582
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryFail:I

    const v3, -0x1bd593

    const/16 v4, 0x16

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v2, v7, :cond_4

    .line 584
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 585
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v9, "updateBatteryState: HV BATTERY FAILURE"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f110402

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 590
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 591
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v2, :cond_2

    .line 593
    invoke-direct {v0, v8, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_0

    .line 594
    :cond_2
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v2, :cond_3

    .line 595
    invoke-direct {v0, v7, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 597
    :cond_3
    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 598
    :cond_4
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v9, 0xb

    const/4 v10, 0x3

    if-eq v2, v9, :cond_21

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v9, 0x13

    if-eq v2, v9, :cond_21

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v9, 0x14

    if-eq v2, v9, :cond_21

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v11, 0x15

    if-eq v2, v11, :cond_21

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eq v2, v4, :cond_21

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v12, 0x17

    if-eq v2, v12, :cond_21

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v2, v10, :cond_5

    goto/16 :goto_3

    .line 616
    :cond_5
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const v13, -0xe30f44

    if-ne v2, v8, :cond_7

    .line 618
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 619
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: CHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11040d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 624
    invoke-direct {v0, v8, v11}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 626
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible()V

    .line 628
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 629
    :cond_7
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v2, v8, :cond_9

    .line 631
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 632
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: FAST CHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_8
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110413

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 637
    invoke-direct {v0, v7, v11}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 639
    :cond_9
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v14, 0xd

    const/16 v15, 0xa

    const/4 v11, 0x4

    if-eq v2, v10, :cond_1c

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eq v2, v11, :cond_1c

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-eq v2, v15, :cond_1c

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v2, v14, :cond_a

    goto/16 :goto_1

    .line 661
    :cond_a
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const v10, -0xd3bc40

    if-ne v2, v5, :cond_d

    .line 663
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 664
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: DISCHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11040f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible()V

    .line 670
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110408

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 672
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v2, :cond_c

    .line 673
    invoke-direct {v0, v8, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 674
    :cond_c
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v2, :cond_24

    .line 675
    invoke-direct {v0, v7, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 677
    :cond_d
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v11, 0x9

    if-ne v2, v11, :cond_10

    .line 679
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 680
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: DISCHARGING COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110410

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 685
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 686
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 687
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v2, :cond_f

    .line 688
    invoke-direct {v0, v8, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 689
    :cond_f
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v2, :cond_24

    .line 690
    invoke-direct {v0, v7, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 692
    :cond_10
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v11, 0x6

    if-ne v2, v11, :cond_13

    .line 694
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_11

    .line 695
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: SCHEDULED CHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_11
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110415

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 700
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v2, :cond_12

    .line 701
    invoke-direct {v0, v8, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 702
    :cond_12
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v2, :cond_24

    .line 703
    invoke-direct {v0, v7, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 705
    :cond_13
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v10, 0x5

    if-ne v2, v10, :cond_16

    .line 707
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_14

    .line 708
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: Heating"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_14
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110414

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v3, -0x89c00

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 713
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v2, :cond_15

    .line 714
    invoke-direct {v0, v8, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 715
    :cond_15
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v2, :cond_24

    .line 716
    invoke-direct {v0, v7, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 718
    :cond_16
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v9, 0xc

    if-ne v2, v9, :cond_18

    .line 720
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_17

    .line 721
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v7, "updateBatteryState: Discharging  failure"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_17
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110411

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 727
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 728
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 729
    invoke-direct {v0, v8, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 730
    :cond_18
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1a

    .line 732
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_19

    .line 733
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: ULTRA CHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_19
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110416

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 738
    const/16 v2, 0x15

    invoke-direct {v0, v7, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_4

    .line 741
    :cond_1a
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_1b

    .line 742
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: display none"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_1b
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 641
    :cond_1c
    :goto_1
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_1d

    .line 642
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v3, "updateBatteryState: CHARGING COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_1d
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v2, v10, :cond_1e

    .line 645
    const/16 v2, 0x15

    invoke-direct {v0, v8, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 646
    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 647
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto :goto_2

    .line 649
    :cond_1e
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 652
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 653
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 655
    :goto_2
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v2, v11, :cond_1f

    .line 656
    const/16 v2, 0x15

    invoke-direct {v0, v8, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_4

    .line 657
    :cond_1f
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-eq v2, v15, :cond_20

    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v2, v14, :cond_24

    .line 658
    :cond_20
    const/16 v2, 0x15

    invoke-direct {v0, v7, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_4

    .line 600
    :cond_21
    :goto_3
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_22

    .line 601
    const-string v2, "ChargePopupWindow"

    const-string/jumbo v9, "updateBatteryState: CHARGING FAILURE"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_22
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f110412

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 606
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 607
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 609
    iget v2, v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v2, v10, :cond_23

    .line 610
    invoke-direct {v0, v7, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_4

    .line 613
    :cond_23
    invoke-direct {v0, v8, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 746
    :cond_24
    :goto_4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    .line 747
    return-void
.end method

.method private updateButtonStates()V
    .locals 15

    .line 947
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateButtonStates:  mPlugACState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPlugDCState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isChargeDCCapOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeDCCapOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , isChargeACCapOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeACCapOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mBatteryAcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mBatteryDcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mChargeACCapAvail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mChargeDCCapAvail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mV2LState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2LState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    const/4 v0, 0x0

    .line 960
    .local v0, "isSmall":Z
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEstimateTime:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEstimateTime(F)V

    .line 962
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/4 v2, 0x4

    const/16 v3, 0x11

    const/16 v4, 0x18

    const/4 v5, 0x3

    const/16 v6, 0xc

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-nez v1, :cond_10

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-nez v1, :cond_10

    .line 963
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    const/16 v10, 0x19

    if-ne v1, v8, :cond_2

    .line 964
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeACCapOn:Z

    if-nez v1, :cond_1

    .line 965
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 966
    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_1

    .line 968
    :cond_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 969
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_1

    .line 971
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 974
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    if-ne v1, v9, :cond_5

    .line 975
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 976
    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_1

    .line 972
    :cond_4
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 973
    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 978
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    if-ne v1, v8, :cond_7

    .line 979
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeDCCapOn:Z

    if-nez v1, :cond_6

    .line 980
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 981
    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_3

    .line 983
    :cond_6
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 984
    invoke-direct {p0, v8, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_3

    .line 986
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    if-ne v1, v2, :cond_8

    goto :goto_2

    .line 989
    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    if-ne v1, v9, :cond_a

    .line 990
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 991
    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_3

    .line 987
    :cond_9
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 988
    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 993
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_b

    .line 994
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    .line 997
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeDCCapOn:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeACCapOn:Z

    if-nez v1, :cond_c

    goto :goto_4

    .line 1004
    :cond_c
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 1005
    const-string v1, "ChargePopupWindow"

    const-string v2, "both not connection ,updateButtonStates: display none"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1008
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto/16 :goto_a

    .line 999
    :cond_e
    :goto_4
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 1000
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: cap off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 1012
    :cond_10
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    const/16 v10, 0x16

    const/16 v11, 0x14

    const/16 v12, 0x15

    const/4 v13, 0x0

    if-nez v1, :cond_2e

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v1, :cond_2e

    .line 1013
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1014
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1016
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1017
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/4 v3, 0x7

    const/16 v4, 0x17

    if-ne v1, v3, :cond_12

    .line 1019
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 1020
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC display Stop discharging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_11
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 1023
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1024
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1028
    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eq v1, v8, :cond_2c

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_13

    goto/16 :goto_6

    .line 1035
    :cond_13
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v1, v9, :cond_15

    .line 1036
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 1037
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC display Stop charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_14
    invoke-direct {p0, v9, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1040
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 1041
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto/16 :goto_a

    .line 1042
    :cond_15
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v3, 0x6

    const v14, -0xd3bc40

    if-ne v1, v3, :cond_17

    .line 1044
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_16

    .line 1045
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC SCHEDULED CHARGING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_16
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1048
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1049
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1051
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110415

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_a

    .line 1054
    :cond_17
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1a

    .line 1056
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 1057
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC Heating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1060
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v2, -0x89c00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1065
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eqz v1, :cond_19

    .line 1066
    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1067
    :cond_19
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v1, :cond_3d

    .line 1068
    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1070
    :cond_1a
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v1, v6, :cond_1c

    .line 1072
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 1073
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC Discharging  failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v2, -0x1bd593

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1079
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1080
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1081
    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1082
    :cond_1c
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1f

    .line 1083
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1084
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC display Power other vehicle & Power external device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_1d
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1087
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2VState:I

    if-eq v1, v8, :cond_1e

    .line 1088
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible()V

    .line 1089
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 1091
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 1094
    :cond_1e
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2LState:I

    if-eq v1, v8, :cond_3d

    .line 1095
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1096
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110404

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 1099
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 1101
    :cond_1f
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v1, v7, :cond_21

    .line 1103
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 1104
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC DISCHARGING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11040f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible()V

    .line 1110
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110408

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1112
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1113
    :cond_21
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_23

    .line 1115
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 1116
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC DISCHARGING COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1119
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110410

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1121
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1122
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1123
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1124
    :cond_23
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_2a

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_2a

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eq v1, v11, :cond_2a

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eq v1, v12, :cond_2a

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-eq v1, v10, :cond_2a

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v1, v4, :cond_24

    goto :goto_5

    .line 1138
    :cond_24
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v1, v5, :cond_26

    .line 1140
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 1141
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC CHARGING COMPLETE, start charge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_25
    invoke-direct {p0, v9, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1144
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 1145
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto/16 :goto_a

    .line 1146
    :cond_26
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v1, v2, :cond_28

    .line 1148
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 1149
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC CHARGING COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1152
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v2, -0xe30f44

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1154
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1156
    invoke-direct {p0, v9, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1158
    :cond_28
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 1159
    const-string v1, "ChargePopupWindow"

    const-string v2, "ac connection, updateButtonStates: display none"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 1128
    :cond_2a
    :goto_5
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 1129
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC CHARGING FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_2b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110412

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v2, -0x1bd593

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1134
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1135
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1137
    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1029
    :cond_2c
    :goto_6
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_2d

    .line 1030
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: AC display Start Charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_2d
    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1033
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 1034
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto/16 :goto_a

    .line 1165
    :cond_2e
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-nez v1, :cond_3b

    .line 1166
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1167
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1168
    invoke-direct {p0, v8, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1170
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-eq v1, v9, :cond_39

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v1, v6, :cond_2f

    goto/16 :goto_9

    .line 1178
    :cond_2f
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v1, v5, :cond_31

    .line 1179
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_30

    .line 1180
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: DC CHARGING FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_30
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110412

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v2, -0x1bd593

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1185
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1186
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1188
    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_a

    .line 1189
    :cond_31
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_37

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_32

    goto :goto_8

    .line 1200
    :cond_32
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-eqz v1, :cond_35

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    if-ne v1, v8, :cond_33

    goto :goto_7

    .line 1208
    :cond_33
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 1209
    const-string v1, "ChargePopupWindow"

    const-string v2, "dc connection, updateButtonStates: display none"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_34
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 1201
    :cond_35
    :goto_7
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_36

    .line 1202
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: DC display Start Charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_36
    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1205
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 1206
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto :goto_a

    .line 1191
    :cond_37
    :goto_8
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_38

    .line 1192
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: DC CHARGING COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_38
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    const v2, -0xe30f44

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1197
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 1198
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1199
    invoke-direct {p0, v8, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_a

    .line 1172
    :cond_39
    :goto_9
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_3a

    .line 1173
    const-string v1, "ChargePopupWindow"

    const-string/jumbo v2, "updateButtonStates: DC display Stop charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_3a
    invoke-direct {p0, v8, v12}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1176
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnChargeStateVisible(I)V

    .line 1177
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    goto :goto_a

    .line 1215
    :cond_3b
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 1216
    const-string v1, "ChargePopupWindow"

    const-string v2, "else, updateButtonStates: display none"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_3c
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1219
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1220
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    const/4 v0, 0x1

    .line 1223
    :cond_3d
    :goto_a
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    .line 1224
    return-void
.end method

.method private updatePlugState()V
    .locals 10

    .line 777
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 778
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePlugState:  mPlugACState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPlugDCState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEstimateTime:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEstimateTime(F)V

    .line 783
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const v1, 0x7f0804da

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eq v0, v3, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mConnectStateView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCircleImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11041c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    invoke-direct {p0, v7, v5}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 790
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_3

    .line 791
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/16 v8, 0x9

    const/4 v9, 0x5

    if-eq v0, v8, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-ne v0, v9, :cond_2

    goto/16 :goto_1

    .line 804
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/16 v1, 0x15

    const v2, 0x7f0804d9

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eq v0, v7, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-eq v0, v9, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    goto :goto_0

    .line 810
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-eq v0, v3, :cond_4

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mConnectStateView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCircleImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto/16 :goto_3

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mConnectStateView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 806
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mConnectStateView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCircleImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110418

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    invoke-direct {p0, v7, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_3

    .line 793
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mConnectStateView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCircleImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    if-ne v0, v8, :cond_7

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f11041a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    invoke-direct {p0, v7, v5}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_2

    .line 798
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    if-ne v0, v9, :cond_8

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f11041b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 802
    :cond_8
    :goto_2
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceVisible(I)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 820
    :goto_3
    return-void
.end method

.method private updateViews()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getChargeACCapAvail()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeACCapAvail(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getChargeACCap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeACCapState(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getChargeDCCapAvail()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeDCCapAvail(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getChargeDCCap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeDCCapState(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryStateAC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryACState(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getEnduranceMileage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEnduranceMileage(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getUnitDis()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setUnitDrvDis(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugACState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setAcState(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPlugDCState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDcState(I)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryStateDC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryDCState(I)V

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryFail:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryFailure(I)V

    .line 277
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 5
    .param p1, "value"    # I

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateViews()V

    .line 219
    const v0, 0x7f0805f6

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f080423

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgCar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0804ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeTitle:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvHour:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvOpen:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0804cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgX:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0805d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgOpen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 236
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f080424

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgCar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0804cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeTitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvHour:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvOpen:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f0804cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgX:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0805d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgOpen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :goto_0
    return-void
.end method

.method public getIsShowing()Z
    .locals 1

    .line 1395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->showHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110406

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "TEXT_START_CHARGING":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "TEXT_STOP_CHARGING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "TEXT_POWER_OTHER_VEHICLE":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110404

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "TEXT_POWER_EXTERNAL_DEVICE":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110408

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "TEXT_STOP_DISCHARGING":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "btnText":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, "btnExternalText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    .line 359
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->openChargePage()V

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 361
    goto/16 :goto_0

    .line 390
    :sswitch_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeDCCapOn:Z

    if-eqz v8, :cond_0

    .line 391
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setChargeDCCapOn(Z)V

    goto :goto_0

    .line 394
    :cond_0
    const/16 v8, 0xb

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 395
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setChargeDCCapOn(Z)V

    .line 397
    goto :goto_0

    .line 400
    :sswitch_2
    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 401
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setChargeACCapOn(Z)V

    goto :goto_0

    .line 356
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 357
    goto :goto_0

    .line 375
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 376
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setV2LOn(I)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setV2LOn(I)V

    .line 381
    goto :goto_0

    .line 363
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 364
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 365
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setStartCharging(I)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setStartCharging(I)V

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setV2VOn(I)V

    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setV2VOn(I)V

    .line 404
    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00a5 -> :sswitch_5
        0x7f0a00aa -> :sswitch_4
        0x7f0a00c8 -> :sswitch_3
        0x7f0a0214 -> :sswitch_2
        0x7f0a0215 -> :sswitch_1
        0x7f0a051f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setContentView(I)V

    .line 132
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->batteryView:Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;

    .line 133
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryBg:Landroid/view/View;

    .line 134
    const v0, 0x7f0a04b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeState:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0a04ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeTitle:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0a04b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvChargeConnectState:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mConnectStateView:Landroid/view/View;

    .line 138
    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCircleImg:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f0a04c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvLeft:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0a02d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    .line 141
    const v0, 0x7f0a0478

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    .line 142
    const v0, 0x7f0a04c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvHour:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0a04c6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMin:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0a04c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMinContent:Landroid/view/View;

    .line 145
    const v0, 0x7f0a0215

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    .line 146
    const v0, 0x7f0a0214

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    .line 147
    const v0, 0x7f0a01da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugHeadCap:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugHeadCap:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    .line 150
    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    .line 151
    const v0, 0x7f0a04b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvBatteryLevel:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0a04b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvBatteryLevelUnit:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a04db

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvRange:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0a04e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgX:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgCar:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0a051f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mViewOpen:Landroid/view/View;

    .line 158
    const v0, 0x7f0a04ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvOpen:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0a01f5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgOpen:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    .line 161
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mAllmostFullCharged:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->batteryView:Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->setBatterySize(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mImgX:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mViewOpen:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDCPlugOpen:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mACPlugOpen:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DjQJf-hzalY6i8hGj1XYReFxylY;-><init>(Lcom/android/systemui/statusbar/pma/ChargePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->initView(Z)V

    .line 172
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeACCapAvail(I)V

    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeACCapState(I)V

    .line 174
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeDCCapAvail(I)V

    .line 175
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeDCCapState(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBtnExternalDeviceText()V

    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryACState(I)V

    .line 179
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEnduranceMileage:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEnduranceMileage(I)V

    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mUnitDis:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setUnitDrvDis(I)V

    .line 181
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setAcState(I)V

    .line 182
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDcState(I)V

    .line 183
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryDCState(I)V

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryFail:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryFailure(I)V

    .line 187
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 3
    .param p1, "language"    # I

    .line 257
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChange , language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateViews()V

    .line 262
    return-void
.end method

.method public setAcState(I)V
    .locals 0
    .param p1, "acState"    # I

    .line 464
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugACState:I

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updatePlugState()V

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 467
    return-void
.end method

.method public setBatteryACState(I)V
    .locals 0
    .param p1, "acState"    # I

    .line 476
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateBatteryState()V

    .line 478
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 479
    return-void
.end method

.method public setBatteryDCState(I)V
    .locals 0
    .param p1, "dcState"    # I

    .line 482
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryDcState:I

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateBatteryState()V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 485
    return-void
.end method

.method public setBatteryFailure(I)V
    .locals 0
    .param p1, "batteryFail"    # I

    .line 488
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryFail:I

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateBatteryState()V

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 491
    return-void
.end method

.method public setBatteryLevel(FI)V
    .locals 4
    .param p1, "batteryLevel"    # F
    .param p2, "batteryColor"    # I

    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryLevel:F

    .line 408
    float-to-int v0, p1

    .line 409
    .local v0, "level":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "ChargePopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBatteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryLevel:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvBatteryLevel:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvBatteryLevelUnit:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvRange:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvBatteryLevel:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvBatteryLevelUnit:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvRange:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEnduranceMileage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->batteryView:Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryLevel:F

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->setPopupBatteryLevel(FI)V

    .line 424
    return-void
.end method

.method public setChargeACCapAvail(I)V
    .locals 3
    .param p1, "chargeACCapAvail"    # I

    .line 1368
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1369
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChargeACCapAvail chargeACCapAvail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    .line 1372
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1373
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    goto :goto_0

    .line 1374
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 1375
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    goto :goto_0

    .line 1377
    :cond_2
    const/4 v0, 0x3

    if-eq v0, p1, :cond_3

    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 1378
    :cond_3
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1380
    :cond_4
    :goto_0
    return-void
.end method

.method public setChargeACCapState(I)V
    .locals 6
    .param p1, "chargeACCapState"    # I

    .line 1274
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1275
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChargeACCapState chargeACCapState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapState:I

    .line 1278
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeACCapOn:Z

    .line 1279
    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    const/16 v3, 0x10

    const/16 v4, 0x19

    const/4 v5, 0x2

    if-ne v2, v1, :cond_3

    .line 1280
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeACCapOn:Z

    const/16 v2, 0x8

    if-nez v1, :cond_2

    .line 1282
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isAcDcNotplag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1284
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1285
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    goto :goto_2

    .line 1290
    :cond_2
    const/16 v1, 0x18

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isAcDcNotplag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1292
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1293
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    goto :goto_2

    .line 1297
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1300
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeACCapAvail:I

    if-ne v0, v5, :cond_7

    .line 1301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isAcDcNotplag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1302
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1304
    :cond_5
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_2

    .line 1298
    :cond_6
    :goto_1
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setACPlugButtonState(I)V

    .line 1299
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1306
    :cond_7
    :goto_2
    return-void
.end method

.method public setChargeDCCapAvail(I)V
    .locals 3
    .param p1, "chargeDCCapAvail"    # I

    .line 1353
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1354
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChargeDCCapAvail chargeDCCapAvail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    .line 1357
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1358
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    goto :goto_0

    .line 1359
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 1360
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    goto :goto_0

    .line 1362
    :cond_2
    const/4 v0, 0x3

    if-eq v0, p1, :cond_3

    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 1363
    :cond_3
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1365
    :cond_4
    :goto_0
    return-void
.end method

.method public setChargeDCCapState(I)V
    .locals 5
    .param p1, "chargeDCCapState"    # I

    .line 1310
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1311
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChargeDCCapState chargeDCCapState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapState:I

    .line 1314
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeDCCapOn:Z

    .line 1315
    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    const/16 v3, 0x19

    if-ne v2, v1, :cond_3

    .line 1316
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isChargeDCCapOn:Z

    const/16 v4, 0x8

    if-nez v2, :cond_2

    .line 1318
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isAcDcNotplag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1320
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1321
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    goto :goto_2

    .line 1326
    :cond_2
    const/16 v2, 0x18

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isAcDcNotplag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1328
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1329
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnContent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBgSmall(Z)V

    goto :goto_2

    .line 1333
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    goto :goto_1

    .line 1336
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeDCCapAvail:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 1337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isAcDcNotplag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1338
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1340
    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    goto :goto_2

    .line 1334
    :cond_6
    :goto_1
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDCPlugButtonState(I)V

    .line 1335
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPlugHeadCapState(II)V

    .line 1342
    :cond_7
    :goto_2
    return-void
.end method

.method public setChargeSOCLevel(F)V
    .locals 0
    .param p1, "chargeSOCLevel"    # F

    .line 1227
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mChargeSOCLevel:F

    .line 1228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 1229
    return-void
.end method

.method public setDcState(I)V
    .locals 0
    .param p1, "dcState"    # I

    .line 470
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mPlugDCState:I

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updatePlugState()V

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 473
    return-void
.end method

.method public setDialogShow()V
    .locals 4

    .line 1383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->dismiss()V

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->showHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1387
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->show()V

    .line 1388
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1389
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1390
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->showHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1392
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public setDisChargeSOCLevel(F)V
    .locals 0
    .param p1, "disChargeSOCLevel"    # F

    .line 1232
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mDisChargeSOCLevel:F

    .line 1233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 1234
    return-void
.end method

.method public setEnduranceMileage(I)V
    .locals 3
    .param p1, "enduranceMileage"    # I

    .line 435
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEnduranceMileage:I

    .line 436
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnduranceMileage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryLevel()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvRange:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvRange:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :goto_0
    return-void
.end method

.method public setEstimateTime(F)V
    .locals 8
    .param p1, "estimateTime"    # F

    .line 494
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEstimateTime: estimateTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mEstimateTime:F

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->ifInProgress()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 499
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 500
    const-string v0, "ChargePopupWindow"

    const-string/jumbo v2, "setEstimateTime: not in progress"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mAllmostFullCharged:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 506
    :cond_2
    const v0, 0x44ffe000    # 2047.0f

    cmpl-float v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 508
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryAcState:I

    if-ne v0, v1, :cond_3

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMinContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvHour:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 518
    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_7

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    goto :goto_0

    .line 535
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 536
    const-string v0, "ChargePopupWindow"

    const-string/jumbo v2, "setEstimateTime: else"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 519
    :cond_7
    :goto_0
    float-to-int v0, p1

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->min:I

    .line 520
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->min:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->hour:I

    .line 521
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->hour:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->min:I

    if-lez v0, :cond_9

    .line 522
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 523
    const-string v0, "ChargePopupWindow"

    const-string/jumbo v2, "setEstimateTime: hour > 24"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 528
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMinContent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvHour:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->hour:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvMin:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->min:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryLevel()F

    move-result v0

    .line 544
    .local v0, "battery":F
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 545
    const-string v2, "ChargePopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEstimateTime battery == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_a
    float-to-double v4, v0

    const-wide v6, 0x4058c00000000000L    # 99.0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_b

    .line 548
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mAllmostFullCharged:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mMore24Hour:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTime:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 552
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mAllmostFullCharged:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    .end local v0    # "battery":F
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 557
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEstimateTime: min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->min:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hour = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_c
    return-void
.end method

.method public setPopupBatteryColor(I)V
    .locals 3
    .param p1, "batteryColor"    # I

    .line 428
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupBatteryColor mBatteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", batteryColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->batteryView:Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->setPopupBatteryColor(I)V

    .line 432
    return-void
.end method

.method public setUnitDrvDis(I)V
    .locals 3
    .param p1, "unitDis"    # I

    .line 450
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mUnitDis:I

    .line 451
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUnitDrvDis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mUnitDis:I

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    const-string v1, "km"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mTvUnitDis:Landroid/widget/TextView;

    const-string v1, "mile"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updatePlugState()V

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->updateButtonStates()V

    .line 461
    return-void
.end method

.method public setV2LState(I)V
    .locals 4
    .param p1, "v2LState"    # I

    .line 1257
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1258
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setV2LState v2LState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2LState:I

    .line 1261
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2LState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1264
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2LState:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110404

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1270
    :goto_0
    return-void
.end method

.method public setV2VState(I)V
    .locals 4
    .param p1, "v2VState"    # I

    .line 1241
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1242
    const-string v0, "ChargePopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setV2VState v2VState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2VState:I

    .line 1245
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2VState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1248
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mV2VState:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnChargeState:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->mBtnExternalDevice:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1254
    :goto_0
    return-void
.end method
