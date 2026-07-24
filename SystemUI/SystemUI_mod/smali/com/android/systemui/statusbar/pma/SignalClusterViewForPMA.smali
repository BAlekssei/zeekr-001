.class public Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
.super Landroid/widget/LinearLayout;
.source "SignalClusterViewForPMA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
.implements Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private btContent:Landroid/widget/FrameLayout;

.field private esimTimeOUT:Z

.field private gpsContent:Landroid/widget/FrameLayout;

.field private hicarContent:Landroid/widget/FrameLayout;

.field private hotpotContent:Landroid/widget/FrameLayout;

.field private imgGpsView:Landroid/widget/ImageView;

.field private imgHicarView:Landroid/widget/ImageView;

.field private imgPassengerDoorClose:Landroid/widget/ImageView;

.field isConnectedPre:Z

.field private isESIMSignalNoStrength:Z

.field isEnabledPre:Z

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothView:Landroid/widget/ImageView;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mConnectivityControllerForPMA:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

.field private mContext:Landroid/content/Context;

.field private mESIMConnectStatusLevel:I

.field private mESIMConnectStatusShow:Z

.field private mESIMSignalLevel:I

.field private mESIMSignalLevelShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mIsDayUIMode:Z

.field private mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mMobileSignal:Landroid/widget/ImageView;

.field private mNetworkConnectStatus:Landroid/widget/ImageView;

.field private mNetworkFrameLayout:Landroid/widget/FrameLayout;

.field private mNetworkStatus:Landroid/widget/ImageView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

.field private mWPCMode:I

.field private mWPCStatus:I

.field private mWPCView:Landroid/widget/ImageView;

.field private mWifiAPConnect:Z

.field private mWifiAPIconShow:Z

.field private mWifiIconShow:Z

.field private mWifiScan:Z

.field private mWifiSignalLevel:I

.field private mWifiView:Landroid/widget/ImageView;

.field private networkConnectStatusContent:Landroid/widget/FrameLayout;

.field private passengerDoorCloseContent:Landroid/widget/FrameLayout;

.field private tvNoSignal:Landroid/widget/TextView;

.field private wifiContent:Landroid/widget/FrameLayout;

.field private wirelessChargeContent:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 177
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCStatus:I

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiIconShow:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiScan:Z

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPIconShow:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusShow:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    .line 127
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    .line 128
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 171
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->activityManager:Landroid/app/ActivityManager;

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isESIMSignalNoStrength:Z

    .line 909
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->esimTimeOUT:Z

    .line 911
    new-instance v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCStatus:I

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiIconShow:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiScan:Z

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPIconShow:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusShow:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    .line 127
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    .line 128
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 171
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->activityManager:Landroid/app/ActivityManager;

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isESIMSignalNoStrength:Z

    .line 909
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->esimTimeOUT:Z

    .line 911
    new-instance v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mConnectivityControllerForPMA:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 185
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->initWPCMode()V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->initWifiMode()V

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->initWifiAPMode()V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->initESIMMode()V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->passengerDoorCloseContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mConnectivityControllerForPMA:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->esimTimeOUT:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateESIMSignalStrength(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateESIMConnectStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWifiStatus(Z)V

    return-void
.end method

.method private changeStatusBarTheme()V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateBluetooth(Z)V

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWPCStatus(Z)V

    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWifiStatus(Z)V

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWifiAPStatus(Z)V

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateESIMSignalStrength(Z)V

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateESIMConnectStatus(Z)V

    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updatePassengerDoorClose(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hotpotContent:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPIconShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "statusbar_wifi_day.json"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "statusbar_wifi_night.json"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_3

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "statusbar_wifi_day.json"

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "statusbar_wifi_night.json"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 367
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->imgGpsView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    if-eqz v1, :cond_4

    const v1, 0x7f08019b

    goto :goto_4

    :cond_4
    const v1, 0x7f08019c

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->imgHicarView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    const v1, 0x7f0801c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    if-eqz v1, :cond_5

    const v1, 0x7f080609

    goto :goto_5

    :cond_5
    const v1, 0x7f08060a

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->tvNoSignal:Landroid/widget/TextView;

    const v1, -0xc7c5c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 375
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->tvNoSignal:Landroid/widget/TextView;

    const v1, -0x1e1c1b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    :goto_6
    return-void
.end method

.method private initESIMMode()V
    .locals 1

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusShow:Z

    .line 449
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    .line 450
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    .line 451
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    .line 452
    return-void
.end method

.method private initWPCMode()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getWPCChargeStatus()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCStatus:I

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getWPCChargeMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    .line 436
    return-void
.end method

.method private initWifiAPMode()V
    .locals 1

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPIconShow:Z

    .line 445
    return-void
.end method

.method private initWifiMode()V
    .locals 1

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiIconShow:Z

    .line 440
    iput v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    .line 441
    return-void
.end method

.method public static synthetic lambda$onESIMConnectStatusChange$4(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateESIMConnectStatus(Z)V

    .line 555
    return-void
.end method

.method public static synthetic lambda$onESIMSignalStrengthChange$5(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateESIMSignalStrength(Z)V

    .line 569
    return-void
.end method

.method public static synthetic lambda$onWPCChargeModeChange$6(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWPCStatus(Z)V

    .line 590
    return-void
.end method

.method public static synthetic lambda$onWifiAPStateChange$3(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hotpotContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 530
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 535
    :cond_1
    return-void
.end method

.method public static synthetic lambda$onWifiApConnectStateChange$2(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 3

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 517
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onWifiScanStateChange$1(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 2

    .line 489
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiScan:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 493
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWifiStatus(Z)V

    .line 494
    return-void
.end method

.method public static synthetic lambda$onWifiSignalStateChange$0(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateWifiStatus(Z)V

    .line 478
    return-void
.end method

.method public static synthetic lambda$updateGps$7(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->gpsContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 659
    return-void
.end method

.method public static synthetic lambda$updateGps$8(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->gpsContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 663
    return-void
.end method

.method public static synthetic lambda$updateHicar$10(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hicarContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 676
    return-void
.end method

.method public static synthetic lambda$updateHicar$9(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hicarContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 672
    return-void
.end method

.method private updateBluetooth(Z)V
    .locals 5
    .param p1, "isDayUIMode"    # Z

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    .line 392
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothAlreadyEnabled()Z

    move-result v2

    or-int/2addr v1, v2

    .line 393
    .local v1, "isEnabled":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 394
    const-string v2, "SignalClusterViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBluetooth isConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isDayUIMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    if-eqz v1, :cond_6

    .line 400
    if-eqz v0, :cond_2

    .line 401
    if-eqz p1, :cond_1

    .line 402
    const v2, 0x7f0804c4

    .line 402
    .local v2, "iconId":I
    :goto_0
    goto :goto_1

    .line 404
    .end local v2    # "iconId":I
    :cond_1
    const v2, 0x7f0804c5

    goto :goto_0

    .line 407
    :cond_2
    if-eqz p1, :cond_3

    .line 408
    const v2, 0x7f0804c1

    goto :goto_0

    .line 410
    :cond_3
    const v2, 0x7f0804c2

    .line 414
    .restart local v2    # "iconId":I
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isEnabledPre:Z

    .line 415
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isConnectedPre:Z

    if-eq v3, v0, :cond_5

    .line 416
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isConnectedPre:Z

    .line 417
    const-string v3, "laucher_statusbar_Bluetooth_switch"

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    :goto_2
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    .line 419
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetoothView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->btContent:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 422
    .end local v2    # "iconId":I
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->btContent:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 424
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isEnabledPre:Z

    if-eq v1, v2, :cond_7

    .line 425
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isEnabledPre:Z

    .line 426
    const-string v2, "laucher_statusbar_Bluetooth_switch"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    .line 430
    .end local v0    # "isConnected":Z
    .end local v1    # "isEnabled":Z
    :cond_7
    :goto_3
    return-void
.end method

.method private updateESIMConnectStatus(Z)V
    .locals 4
    .param p1, "isDayUIMode"    # Z

    .line 791
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isESIMSignalNoStrength:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    packed-switch v0, :pswitch_data_0

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 824
    const-string v0, "SignalClusterViewForPMA"

    const-string/jumbo v3, "updateESIMConnectStatus mESIMConnectStatusLevel Error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 819
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v3, 0x7f08047b

    goto :goto_0

    :cond_1
    const v3, 0x7f08047c

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 820
    goto/16 :goto_7

    .line 816
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v3, 0x7f080478

    goto :goto_1

    :cond_2
    const v3, 0x7f080479

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 817
    goto :goto_7

    .line 813
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v3, 0x7f080474

    goto :goto_2

    :cond_3
    const v3, 0x7f080475

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 814
    goto :goto_7

    .line 810
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v3, 0x7f080476

    goto :goto_3

    :cond_4
    const v3, 0x7f080477

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    goto :goto_7

    .line 807
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v3, 0x7f080472

    goto :goto_4

    :cond_5
    const v3, 0x7f080473

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 808
    goto :goto_7

    .line 804
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v3, 0x7f080470

    goto :goto_5

    :cond_6
    const v3, 0x7f080471

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 805
    goto :goto_7

    .line 801
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const v3, 0x7f08047e

    goto :goto_6

    :cond_7
    const v3, 0x7f08047f

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    goto :goto_7

    .line 798
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    nop

    .line 831
    :cond_8
    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusShow:Z

    if-eqz v0, :cond_c

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->networkConnectStatusContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 833
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    packed-switch v0, :pswitch_data_1

    .line 850
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->networkConnectStatusContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 851
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 852
    const-string v0, "SignalClusterViewForPMA"

    const-string/jumbo v1, "updateESIMConnectStatus mESIMConnectStatusLevel Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 847
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkConnectStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const v1, 0x7f08017d

    goto :goto_8

    :cond_9
    const v1, 0x7f08017e

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 848
    goto :goto_b

    .line 838
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkConnectStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    const v1, 0x7f080181

    goto :goto_9

    :cond_a
    const v1, 0x7f080182

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    goto :goto_b

    .line 835
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkConnectStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const v1, 0x7f08017f

    goto :goto_a

    :cond_b
    const v1, 0x7f080180

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 836
    goto :goto_b

    .line 857
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->networkConnectStatusContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 859
    :cond_d
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private updateESIMSignalStrength(Z)V
    .locals 4
    .param p1, "isDayUIMode"    # Z

    .line 863
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateESIMSignalStrength mESIMSignalLevelShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mESIMSignalLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkFrameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->tvNoSignal:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isESIMSignalNoStrength:Z

    goto :goto_0

    .line 872
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->isESIMSignalNoStrength:Z

    .line 874
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    packed-switch v0, :pswitch_data_0

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 898
    const-string v0, "SignalClusterViewForPMA"

    const-string/jumbo v1, "updateESIMSignalStrength mWifiSignalLevel Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 891
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f08046e

    goto :goto_1

    :cond_1
    const v1, 0x7f08046f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->tvNoSignal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    goto :goto_7

    .line 888
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v1, 0x7f08046a

    goto :goto_2

    :cond_2
    const v1, 0x7f08046b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 889
    goto :goto_7

    .line 885
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v1, 0x7f080468

    goto :goto_3

    :cond_3
    const v1, 0x7f080469

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 886
    goto :goto_7

    .line 882
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v1, 0x7f080466

    goto :goto_4

    :cond_4
    const v1, 0x7f080467

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 883
    goto :goto_7

    .line 879
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v1, 0x7f080464

    goto :goto_5

    :cond_5
    const v1, 0x7f080465

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 880
    goto :goto_7

    .line 876
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v1, 0x7f080462

    goto :goto_6

    :cond_6
    const v1, 0x7f080463

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 877
    goto :goto_7

    .line 903
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->tvNoSignal:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    :cond_8
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateGps(Z)V
    .locals 1
    .param p1, "isShowIcon"    # Z

    .line 656
    if-eqz p1, :cond_0

    .line 657
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$1DqIU2fqhqMCgzKwhhOK6Pxrtvs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$1DqIU2fqhqMCgzKwhhOK6Pxrtvs;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 661
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$xD3EfgQ_3e6u0XPRcoG-eJ2lVcI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$xD3EfgQ_3e6u0XPRcoG-eJ2lVcI;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 665
    :goto_0
    return-void
.end method

.method private updatePassengerDoorClose(Z)V
    .locals 2
    .param p1, "isDayUIMode"    # Z

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->imgPassengerDoorClose:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f0805e9

    goto :goto_0

    :cond_0
    const v1, 0x7f0805e8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    return-void
.end method

.method private updateWPCStatus(Z)V
    .locals 4
    .param p1, "isDayUIMode"    # Z

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "wpcIconDisplayStatus":I
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    const/16 v2, 0x8

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 687
    const/4 v0, 0x2

    goto :goto_1

    .line 688
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    if-ne v1, v2, :cond_2

    .line 690
    const/4 v0, 0x1

    goto :goto_1

    .line 691
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 693
    const/4 v0, 0x4

    goto :goto_1

    .line 696
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    .line 684
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 698
    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 712
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v2, 0x7f0805ad

    goto :goto_2

    :cond_5
    const v2, 0x7f0805ae

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    goto :goto_6

    .line 708
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v2, 0x7f0805ab

    goto :goto_3

    :cond_6
    const v2, 0x7f0805ac

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    goto :goto_6

    .line 700
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 701
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const v2, 0x7f0805a7

    goto :goto_4

    :cond_7
    const v2, 0x7f0805a8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    goto :goto_6

    .line 704
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 705
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    const v2, 0x7f0805a9

    goto :goto_5

    :cond_8
    const v2, 0x7f0805aa

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 706
    nop

    .line 720
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWifiAPStatus(Z)V
    .locals 2
    .param p1, "isDayUIMode"    # Z

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "statusbar_ap_day.json"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "statusbar_ap_night.json"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_2

    const-string/jumbo v1, "statusbar_ap_day.json"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "statusbar_ap_night.json"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 783
    :goto_2
    return-void
.end method

.method private updateWifiStatus(Z)V
    .locals 4
    .param p1, "isDayUIMode"    # Z

    .line 724
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiIconShow:Z

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wifiContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 727
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    packed-switch v0, :pswitch_data_0

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wifiContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 748
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 749
    const-string v0, "SignalClusterViewForPMA"

    const-string v2, "Wifi Signal Level Error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 744
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v2, 0x7f080488

    goto :goto_0

    :cond_0
    const v2, 0x7f080489

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 745
    goto :goto_6

    .line 741
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v2, 0x7f080486

    goto :goto_1

    :cond_1
    const v2, 0x7f080487

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    goto :goto_6

    .line 738
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v2, 0x7f080484

    goto :goto_2

    :cond_2
    const v2, 0x7f080485

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 739
    goto :goto_6

    .line 735
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v2, 0x7f080482

    goto :goto_3

    :cond_3
    const v2, 0x7f080483

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 736
    goto :goto_6

    .line 732
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v2, 0x7f080480

    goto :goto_4

    :cond_4
    const v2, 0x7f080481

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 733
    goto :goto_6

    .line 729
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v2, 0x7f08048a

    goto :goto_5

    :cond_5
    const v2, 0x7f08048b

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 730
    nop

    .line 754
    :cond_6
    :goto_6
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_7

    .line 755
    const-string v0, "laucher_statusbar_wifi_switch"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    goto :goto_7

    .line 757
    :cond_7
    const-string v0, "laucher_statusbar_wifi_switch"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    .line 759
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_8

    .line 762
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiScan:Z

    if-eqz v0, :cond_9

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wifiContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_8

    .line 767
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wifiContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 769
    const-string v0, "laucher_statusbar_wifi_switch"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    .line 771
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public noNetBroadcast()V
    .locals 5

    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, "isConnected":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yfve.NETWORK_CONNECTITY_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->esimTimeOUT:Z

    if-nez v2, :cond_1

    .line 940
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 941
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    if-gt v2, v3, :cond_0

    .line 942
    const/4 v0, 0x1

    .line 946
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    if-eqz v2, :cond_1

    .line 947
    iget v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    if-gt v2, v3, :cond_1

    .line 948
    const/4 v0, 0x1

    .line 952
    :cond_1
    const-string v2, "isconnected"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 953
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    .end local v0    # "isConnected":Z
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SignalClusterViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noNetBroadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 198
    const-string v0, "SignalClusterViewForPMA"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v0, 0x7f0a0227

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHotpotView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 200
    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hotpotContent:Landroid/widget/FrameLayout;

    .line 201
    const v0, 0x7f0a0224

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetoothView:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->btContent:Landroid/widget/FrameLayout;

    .line 203
    const v0, 0x7f0a0230

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiView:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mLottieWifiView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 205
    const v0, 0x7f0a053b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wifiContent:Landroid/widget/FrameLayout;

    .line 206
    const v0, 0x7f0a037c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCView:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f0a037d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    .line 208
    const v0, 0x7f0a022a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkConnectStatus:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f0a0308

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->networkConnectStatusContent:Landroid/widget/FrameLayout;

    .line 210
    const v0, 0x7f0a022b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkStatus:Landroid/widget/ImageView;

    .line 211
    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mMobileSignal:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0a01c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mNetworkFrameLayout:Landroid/widget/FrameLayout;

    .line 213
    const v0, 0x7f0a01fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->imgPassengerDoorClose:Landroid/widget/ImageView;

    .line 214
    const v0, 0x7f0a0352

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->passengerDoorCloseContent:Landroid/widget/FrameLayout;

    .line 217
    const v0, 0x7f0a04ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->tvNoSignal:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0a01e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->imgGpsView:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->gpsContent:Landroid/widget/FrameLayout;

    .line 220
    const v0, 0x7f0a01ea

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->imgHicarView:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hicarContent:Landroid/widget/FrameLayout;

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->hotpotContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->btContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->wifiContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->passengerDoorCloseContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$Mb-SbaJbdHB4v4sh3G6DQWAciPI;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mConnectivityControllerForPMA:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->setOnWifiAPStateChangeListener(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_stop_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "launcherFlag":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "Entertainment_open"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, "oneWorld":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    .line 237
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    goto :goto_1

    .line 238
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 239
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    goto :goto_1

    .line 240
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 241
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    goto :goto_1

    .line 243
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    .line 245
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->changeStatusBarTheme()V

    .line 246
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLocationMode()I

    move-result v5

    if-ne v5, v4, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateGps(Z)V

    .line 247
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getSupportElectricDoor()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 249
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerDoorPosInit()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_5

    .line 250
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->passengerDoorCloseContent:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 252
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->passengerDoorCloseContent:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    :cond_6
    :goto_3
    new-instance v2, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->create()V

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->changeTheme(I)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    return-void
.end method

.method public onBluetoothDevicesChanged()V
    .locals 0

    .line 330
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 334
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateBluetooth(Z)V

    .line 335
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0089

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a01b4

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0352

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a053b

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->openWIFIPage()V

    .line 285
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 286
    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerDoorClose()V

    .line 289
    const-string/jumbo v0, "\u5173\u95ed\u526f\u9a7e\u8f66\u95e8"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 290
    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->openApPage()V

    .line 275
    const-string/jumbo v0, "\u529f\u80fd\u70ed\u70b9"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 276
    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->openBTPage()V

    .line 280
    const-string/jumbo v0, "\u84dd\u7259\u8fde\u63a5"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 281
    nop

    .line 298
    :goto_0
    return-void
.end method

.method public onDayNightModeChange(Z)V
    .locals 0
    .param p1, "isDay"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->changeStatusBarTheme()V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->setPopupWindowDayNightMode()V

    .line 341
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 311
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeCallback(Ljava/lang/Object;)V

    .line 314
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mConnectivityControllerForPMA:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mConnectivityControllerForPMA:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->destroy()V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->removeCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 322
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 324
    :cond_2
    return-void
.end method

.method public onESIMConnectStatusChange(IZ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "isShow"    # Z

    .line 548
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onESIMConnectStatusChange ,status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusLevel:I

    .line 552
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMConnectStatusShow:Z

    .line 553
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$jz_a2OXaQbA-7HTMrnFuQb-snRw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$jz_a2OXaQbA-7HTMrnFuQb-snRw;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method public onESIMSignalCallback()V
    .locals 4

    .line 574
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "SignalClusterViewForPMA"

    const-string v1, "onESIMSignalCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->esimTimeOUT:Z

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    return-void
.end method

.method public onESIMSignalStrengthChange(IZ)V
    .locals 3
    .param p1, "signalStrength"    # I
    .param p2, "isShow"    # Z

    .line 561
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onESIMSignalStrengthChange ,signalStrength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    .line 565
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->setNetStatus()V

    .line 567
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$cCCnOlaAP_EUJX_omB06rC4oE84;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$cCCnOlaAP_EUJX_omB06rC4oE84;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method

.method public onLanguageChange(I)V
    .locals 3
    .param p1, "language"    # I

    .line 303
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChange , language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDayUIMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getParkComfortModeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->onParkComfortModeChange(I)V

    .line 307
    return-void
.end method

.method public onLocationModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 381
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationModeChange mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateGps(Z)V

    .line 385
    return-void
.end method

.method public onPassengerDoorPosChange(I)V
    .locals 3
    .param p1, "passengerDoorPos"    # I

    .line 611
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPassengerDoorPosChange ,passengerDoorPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updatePassengerDoorCloseVisibility(I)V

    .line 615
    return-void
.end method

.method public onSuppertElectricDoorChange(Z)V
    .locals 3
    .param p1, "support"    # Z

    .line 619
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppertElectricDoorChange ,support = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateDoorSupportElectric(Z)V

    .line 623
    return-void
.end method

.method public onWPCChargeModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 584
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWPCChargeModeChange ,mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWPCMode:I

    .line 588
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$6Y-Ei4BlV-UwlCVyMcHPl_GYxJs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$6Y-Ei4BlV-UwlCVyMcHPl_GYxJs;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public onWifiAPStateChange(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .line 524
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiAPStateChange ,isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPIconShow:Z

    if-eq v0, p1, :cond_2

    .line 528
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 536
    if-eqz p1, :cond_1

    .line 537
    const-string v0, "laucher_statusbar_hotpot_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 539
    :cond_1
    const-string v0, "laucher_statusbar_hotpot_switch"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackSwitchStatus(Ljava/lang/String;I)V

    .line 542
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPIconShow:Z

    .line 543
    return-void
.end method

.method public onWifiApConnectStateChange(Z)V
    .locals 3
    .param p1, "isConnect"    # Z

    .line 501
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiApConnectStateChange ,isConnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    if-eq v0, p1, :cond_1

    .line 505
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    .line 506
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$pvmSsze6jTj0s7OGyewL3jqRI5A;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$pvmSsze6jTj0s7OGyewL3jqRI5A;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->setNetStatus()V

    .line 520
    return-void
.end method

.method public onWifiScanStateChange(Z)V
    .locals 3
    .param p1, "isScan"    # Z

    .line 483
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiScanStateChange ,isScan = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiScan:Z

    if-eq v0, p1, :cond_1

    .line 487
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiScan:Z

    .line 488
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$6vLOvrqHQv2cPmIQPCz8ytPzsFY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$6vLOvrqHQv2cPmIQPCz8ytPzsFY;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 497
    :cond_1
    return-void
.end method

.method public onWifiSignalStateChange(IZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "isShow"    # Z

    .line 471
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiSignalStateChange ,level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiIconShow:Z

    .line 475
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    .line 476
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$_WtrU_NTqjC-dZJDuBFc0gw27BI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$_WtrU_NTqjC-dZJDuBFc0gw27BI;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method

.method public openApPage()V
    .locals 4

    .line 984
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 985
    const-string v0, "SignalClusterViewForPMA"

    const-string v1, "openApPage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "statusbar.action.jump.CAR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v0, "ap_intent":Landroid/content/Intent;
    const-string v1, "DIALOG_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .end local v0    # "ap_intent":Landroid/content/Intent;
    goto :goto_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SignalClusterViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openApPage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public openBTPage()V
    .locals 4

    .line 997
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "SignalClusterViewForPMA"

    const-string v1, "openBTPage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "statusbar.action.jump.CAR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v0, "bt_intent":Landroid/content/Intent;
    const-string v1, "DIALOG_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1003
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v0    # "bt_intent":Landroid/content/Intent;
    goto :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SignalClusterViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openBTPage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public openWIFIPage()V
    .locals 4

    .line 960
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 961
    const-string v0, "SignalClusterViewForPMA"

    const-string v1, "openWIFIPage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "statusbar.action.jump.CAR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "wifi_intent":Landroid/content/Intent;
    const-string v1, "DIALOG_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 966
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v0    # "wifi_intent":Landroid/content/Intent;
    goto :goto_0

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SignalClusterViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openWIFIPage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setNetStatus()V
    .locals 3

    .line 1117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevelShow:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1118
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mESIMSignalLevel:I

    if-gt v0, v1, :cond_0

    .line 1119
    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->setNetConnected(Z)V

    .line 1120
    return-void

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiAPConnect:Z

    if-eqz v0, :cond_1

    .line 1125
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mWifiSignalLevel:I

    if-gt v0, v1, :cond_1

    .line 1126
    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->setNetConnected(Z)V

    .line 1127
    return-void

    .line 1130
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->setNetConnected(Z)V

    .line 1131
    return-void
.end method

.method public setPopupWindowDayNightMode()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mIsDayUIMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->changeTheme(I)V

    .line 347
    :cond_2
    return-void
.end method

.method public updateDoorSupportElectric(Z)V
    .locals 1
    .param p1, "support"    # Z

    .line 639
    new-instance v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void
.end method

.method public updateHicar(Z)V
    .locals 3
    .param p1, "isShowIcon"    # Z

    .line 668
    const-string v0, "SignalClusterViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHicar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-eqz p1, :cond_0

    .line 670
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$xyFffpsc3Q6hhGlMQVDLtzdLVSM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$xyFffpsc3Q6hhGlMQVDLtzdLVSM;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$w7gAT2dBRyQRFz4fbR9nFCPkXDQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$w7gAT2dBRyQRFz4fbR9nFCPkXDQ;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 678
    :goto_0
    return-void
.end method

.method public updatePassengerDoorCloseVisibility(I)V
    .locals 1
    .param p1, "posValue"    # I

    .line 626
    new-instance v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 636
    return-void
.end method
