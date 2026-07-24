.class public Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
.implements Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TemperatureAqiArea:Landroid/widget/LinearLayout;

.field public static batteryChargingState:I

.field private static btPhoneContent:Landroid/widget/LinearLayout;

.field private static btPhoneType:I

.field private static btnCloseEva:Landroid/widget/Button;

.field private static btnNotifyEva:Landroid/widget/Button;

.field private static dvrContent:Landroid/widget/FrameLayout;

.field public static electricityLevel:F

.field private static imgBtPhone:Landroid/widget/ImageView;

.field private static imgNotificationContent:Landroid/widget/FrameLayout;

.field private static isAlreadyLogin:Z

.field private static isTopBarTranslation:Z

.field private static layoutShowEva:Landroid/widget/LinearLayout;

.field private static lowTempSnowContent:Landroid/widget/FrameLayout;

.field private static mContext:Landroid/content/Context;

.field private static mDateClockTouchNum:I

.field private static mDebugMode:Landroid/widget/FrameLayout;

.field private static mIsAcPowerStateOn:Z

.field private static otaUpdateContent:Landroid/widget/FrameLayout;

.field private static parkComfortModeContent:Landroid/widget/FrameLayout;

.field private static sceneModeContent:Landroid/widget/FrameLayout;

.field private static sentryContent:Landroid/widget/FrameLayout;

.field private static songContent:Landroid/widget/FrameLayout;

.field private static statusBarContents:Landroid/widget/FrameLayout;

.field private static tvBatteryContent:Landroid/widget/FrameLayout;

.field private static wirelessChargeContent:Landroid/widget/FrameLayout;


# instance fields
.field private aqiContent:Landroid/view/View;

.field private awake_roman_mode:Z

.field private batteryIcon:Landroid/widget/ImageView;

.field private batteryState:Landroid/widget/ImageView;

.field private batteryTemp:I

.field private camp_mode:Z

.field private cemera_mode:Z

.field private connection:Landroid/content/ServiceConnection;

.field private currentBattery:F

.field private currentRemainingKilo:I

.field private currentScene:I

.field private iEvaService:Lcom/zeekr/eva/service/IEvaService;

.field private imgCar:Landroid/widget/ImageView;

.field private imgCharging:Landroid/widget/ImageView;

.field private imgDvr:Landroid/widget/ImageView;

.field private imgInsideAQI:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

.field private imgNotification:Landroid/widget/ImageView;

.field private imgPdc:Landroid/widget/ImageView;

.field private imgRoadSlip:Landroid/widget/ImageView;

.field private imgSnow:Landroid/widget/ImageView;

.field private imgUpdate:Landroid/widget/ImageView;

.field private isAwakeBinder:Z

.field private isCO2Auto:Z

.field isDayUIMode:Z

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

.field private final mActivityMonitor:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

.field private mAqiCO2Level:I

.field private mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private mBatteryACState:I

.field private mBatteryColor:I

.field private mBatteryDCState:I

.field private mBatteryFail:I

.field private mBatteryLin:Landroid/view/View;

.field private mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentId:Ljava/lang/String;

.field private mCurrentIdUrl:Ljava/lang/String;

.field private mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

.field private mDvrStateForTheme:I

.field private mDvrStateIconsDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDvrStateIconsNight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mISceneMode:Lcom/zeekr/carlauncher/ISceneMode;

.field private mIScenseModeCallBack:Lcom/zeekr/carlauncher/IScenseModeCallBack;

.field private mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

.field private mImgCO2Level:Landroid/widget/ImageView;

.field private mImgNzpBack:Landroid/widget/ImageView;

.field private mImgPreSale:Landroid/widget/ImageView;

.field private mImgRemoteLogcat:Landroid/widget/ImageView;

.field private mImgScene:Landroid/widget/ImageView;

.field private mImgSentry:Landroid/widget/ImageView;

.field private mImgSong:Landroid/widget/ImageView;

.field private mImgUsb:Landroid/widget/ImageView;

.field private mImgWirelessCharge:Landroid/widget/ImageView;

.field mIsFullyOpenedPanel:Z

.field private mIsPm25LayoutVisible:Z

.field private mPanelFraction:F

.field private mParkComfortModeView:Landroid/widget/ImageView;

.field private mPlugACState:I

.field private mPlugDCState:I

.field private mPm25PopupDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

.field private mRestSceneObserver:Landroid/database/ContentObserver;

.field private mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

.field private mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

.field private mTvAqiPm25:Landroid/widget/TextView;

.field private mTvUserAccount:Landroid/widget/TextView;

.field private mUsbView:Landroid/widget/ImageView;

.field private mUserAccountView:Landroid/widget/ImageView;

.field private mUserCenterll:Landroid/widget/FrameLayout;

.field private mUserHot:Landroid/widget/FrameLayout;

.field private m_params:Landroid/view/ViewGroup$LayoutParams;

.field private remoteLogcatContent:Landroid/widget/FrameLayout;

.field private reset_mode:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private showKilo:Z

.field private statusBar:Landroid/view/View;

.field private timeEnd:J

.field private timeStart:J

.field private topActivityIsLauncher:Z

.field private tvBattery:Landroid/widget/TextView;

.field private tvClock:Landroid/widget/TextView;

.field private tvDebugMode:Landroid/widget/TextView;

.field private tvInsideAQI:Landroid/widget/TextView;

.field private tvOutsideAQI:Landroid/widget/TextView;

.field private tvOutsideTemp:Landroid/widget/TextView;

.field private tvOutsideTempUnit:Landroid/widget/TextView;

.field private usbContent:Landroid/widget/FrameLayout;

.field private vis:Z

.field private wash_car_mode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    .line 159
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateClockTouchNum:I

    .line 169
    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryChargingState:I

    .line 175
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    .line 208
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAlreadyLogin:Z

    .line 209
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isTopBarTranslation:Z

    .line 210
    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btPhoneType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsFullyOpenedPanel:Z

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateIconsNight:Ljava/util/List;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateIconsDay:Ljava/util/List;

    .line 160
    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateForTheme:I

    .line 164
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsPm25LayoutVisible:Z

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    .line 213
    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->topActivityIsLauncher:Z

    .line 220
    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    .line 224
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->camp_mode:Z

    .line 499
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    .line 608
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$4;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPm25PopupDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1130
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2157
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$28;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 2237
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$29;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$29;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->connection:Landroid/content/ServiceConnection;

    .line 2505
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mISceneMode:Lcom/zeekr/carlauncher/ISceneMode;

    .line 2506
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAwakeBinder:Z

    .line 2507
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIScenseModeCallBack:Lcom/zeekr/carlauncher/IScenseModeCallBack;

    .line 2533
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->serviceConnection:Landroid/content/ServiceConnection;

    .line 230
    sput-object p1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 232
    .local v1, "dvrStateIconsNight":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 234
    .local v2, "dvrStateIconsDay":Landroid/content/res/TypedArray;
    move v3, v0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateIconsNight:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateIconsDay:Ljava/util/List;

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryTemp:I

    .line 246
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mActivityMonitor:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mActivityMonitor:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->setTopActivityChangedListener(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;)V

    .line 250
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContentResolver:Landroid/content/ContentResolver;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->changeStatusBarTheme()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCurrentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserAccountView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCurrentIdUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgDvr:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvClock:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/widget/FrameLayout;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUsbView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSentry:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->reset_mode:Z

    return p1
.end method

.method static synthetic access$2400()Landroid/widget/FrameLayout;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->checkSceneMode()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->camp_mode:Z

    return p1
.end method

.method static synthetic access$2800()Landroid/widget/FrameLayout;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgNotificationContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/eva/service/IEvaService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/zeekr/eva/service/IEvaService;)Lcom/zeekr/eva/service/IEvaService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Lcom/zeekr/eva/service/IEvaService;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    return-object p1
.end method

.method static synthetic access$300()I
    .locals 1

    .line 98
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateClockTouchNum:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->bindServiceInterface()V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 98
    sput p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateClockTouchNum:I

    return p0
.end method

.method static synthetic access$3100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .line 98
    invoke-static {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setStatusBarShow(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryTemp:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgInsideAQI:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvInsideAQI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->m_params:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 98
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->openApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPlugACState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPlugACState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPlugDCState:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPlugDCState:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryACState:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryACState:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryDCState:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryDCState:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryFail:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryFail:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryState:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAwakeBinder:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateIconsDay:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAwakeBinder:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateIconsNight:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPanelFraction:F

    return v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setSceneMode(IZ)V

    return-void
.end method

.method static synthetic access$5500()Landroid/widget/FrameLayout;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sentryContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->usbContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/carlauncher/ISceneMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mISceneMode:Lcom/zeekr/carlauncher/ISceneMode;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/zeekr/carlauncher/ISceneMode;)Lcom/zeekr/carlauncher/ISceneMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Lcom/zeekr/carlauncher/ISceneMode;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mISceneMode:Lcom/zeekr/carlauncher/ISceneMode;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->awake_roman_mode:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAwakeMode(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-wide v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->timeEnd:J

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setRomanMode(ZZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # J

    .line 98
    iput-wide p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->timeEnd:J

    return-wide p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/carlauncher/IScenseModeCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIScenseModeCallBack:Lcom/zeekr/carlauncher/IScenseModeCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 98
    iget-wide v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->timeStart:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .param p1, "x1"    # J

    .line 98
    iput-wide p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->timeStart:J

    return-wide p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAlreadyLogin:Z

    return v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindServiceInterface()V
    .locals 4

    .line 2397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zeekr.eva.aidl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2399
    const-string v1, "com.zeekr.eva"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2400
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2401
    return-void
.end method

.method private changeStatusBarTheme()V
    .locals 7

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 975
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->changeBackgroundResource(IZ)V

    .line 978
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateForTheme:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setDvrState(I)V

    .line 979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V

    .line 980
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryIcon()V

    .line 981
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryChargingView(Z)V

    .line 982
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsAcPower()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    .line 983
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAqiActive(ZZ)V

    .line 984
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btPhoneType:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBtPhoneImage(IZ)V

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentSentryMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setSentryImg(ZZ)V

    .line 986
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->scenceModeOnChanage(IZ)V

    .line 987
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSentry:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0802af

    goto :goto_1

    :cond_2
    const v3, 0x7f0802b0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSentry:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    const v4, 0x7f08060a

    const v5, 0x7f080609

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 989
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUsbView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSong:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_6

    const v3, 0x7f0802fd

    goto :goto_5

    :cond_6
    const v3, 0x7f0802fe

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 992
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->songContent:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_6

    :cond_7
    move v3, v4

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_8

    move v4, v5

    nop

    :cond_8
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_9

    const v3, 0x7f08060b

    goto :goto_7

    :cond_9
    const v3, 0x7f08060c

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvClock:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    const v4, 0x7f0806fa

    const v5, 0x7f0806f9

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_8

    :cond_a
    move v3, v4

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 996
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserHot:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_b

    move v4, v5

    nop

    :cond_b
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getUsbStorageStatus()Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->updateUsb(ZZ)V

    .line 998
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_c

    const v3, 0x7f08057f

    goto :goto_9

    :cond_c
    const v3, 0x7f080580

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 999
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_d

    const v3, 0x7f080659

    goto :goto_a

    :cond_d
    const v3, 0x7f08065a

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgRemoteLogcat:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_e

    const v3, 0x7f0805f0

    goto :goto_b

    :cond_e
    const v3, 0x7f0805f1

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    if-eqz v0, :cond_11

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v3

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_f

    goto :goto_c

    :cond_f
    const/4 v2, 0x2

    goto :goto_c

    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v2

    :goto_c
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->changeTheme(I)V

    .line 1004
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 1005
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 1006
    const-string v0, "StatusBarViewForPMA"

    const-string v3, "changeStatusBarTheme: DAYMODE_SETTING_DAY!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTemp:Landroid/widget/TextView;

    const v3, -0xc7c5c3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTempUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvInsideAQI:Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    const v5, 0x66383a3d

    if-eqz v4, :cond_13

    move v4, v3

    goto :goto_d

    :cond_13
    move v4, v5

    :goto_d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideAQI:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvClock:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvUserAccount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgInsideAQI:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setIndicatorColor(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvAqiPm25:Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    if-eqz v4, :cond_14

    goto :goto_e

    :cond_14
    move v3, v5

    :goto_e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgRoadSlip:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805a5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgPdc:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08059a

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgUpdate:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805b2

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgNotification:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805e5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAlreadyLogin:Z

    if-nez v0, :cond_15

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserAccountView:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805b7

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mParkComfortModeView:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805f3

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvDebugMode:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvDebugMode:Landroid/widget/TextView;

    const v2, 0x7f080525

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    const v2, 0x7f080611

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1032
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1033
    .local v0, "co2Level":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1034
    .local v2, "co2AutoLevel":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 1035
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1037
    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 1038
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1040
    :cond_17
    move v3, v1

    .local v3, "i":I
    :goto_f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 1041
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1044
    .end local v3    # "i":I
    :cond_18
    nop

    .local v1, "i":I
    :goto_10
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 1045
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1047
    .end local v0    # "co2Level":Landroid/content/res/TypedArray;
    .end local v1    # "i":I
    .end local v2    # "co2AutoLevel":Landroid/content/res/TypedArray;
    :cond_19
    goto/16 :goto_14

    .line 1048
    :cond_1a
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1049
    const-string v0, "StatusBarViewForPMA"

    const-string v3, "changeStatusBarTheme: DAYMODE_SETTING_NIGHT"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTemp:Landroid/widget/TextView;

    const v3, -0x1e1c1b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTempUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvInsideAQI:Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    const v5, 0x66b4b9be

    const v6, -0x4b4642

    if-eqz v4, :cond_1c

    move v4, v6

    goto :goto_11

    :cond_1c
    move v4, v5

    :goto_11
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideAQI:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideAQI:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvClock:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvUserAccount:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgInsideAQI:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setIndicatorColor(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvAqiPm25:Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    if-eqz v4, :cond_1d

    move v5, v6

    nop

    :cond_1d
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgRoadSlip:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805a4

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgPdc:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080599

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgUpdate:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805b3

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgNotification:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805e6

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1068
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAlreadyLogin:Z

    if-nez v0, :cond_1e

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserAccountView:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805b6

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mParkComfortModeView:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805f4

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvDebugMode:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvDebugMode:Landroid/widget/TextView;

    const v2, 0x7f080526

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    const v2, 0x7f080612

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1077
    .restart local v0    # "co2Level":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1078
    .restart local v2    # "co2AutoLevel":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 1079
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1081
    :cond_1f
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_20

    .line 1082
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1084
    :cond_20
    move v3, v1

    .restart local v3    # "i":I
    :goto_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 1085
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1088
    .end local v3    # "i":I
    :cond_21
    nop

    .restart local v1    # "i":I
    :goto_13
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 1089
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1092
    .end local v0    # "co2Level":Landroid/content/res/TypedArray;
    .end local v1    # "i":I
    .end local v2    # "co2AutoLevel":Landroid/content/res/TypedArray;
    :cond_22
    :goto_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgCO2Level:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isCO2Auto:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    :goto_15
    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAqiCO2Level:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_23
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    goto :goto_15

    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    return-void
.end method

.method private checkSceneMode()V
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->wash_car_mode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->reset_mode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->cemera_mode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->awake_roman_mode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->camp_mode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    .line 493
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$fAPAVbZ9j6wDPq7NJ7I7rcAY1rE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$fAPAVbZ9j6wDPq7NJ7I7rcAY1rE;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void

    .line 490
    :cond_1
    :goto_0
    return-void
.end method

.method private getAqiPosition()I
    .locals 3

    .line 1240
    const/4 v0, 0x0

    .line 1241
    .local v0, "mAqiX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1242
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1243
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1244
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1246
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getLowTempSnowPosition()I
    .locals 3

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "mUsbX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1302
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1303
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1304
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1306
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getSceneModePosition()I
    .locals 3

    .line 1310
    const/4 v0, 0x0

    .line 1311
    .local v0, "mX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1312
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1313
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1314
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1316
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getSentryModePosition()I
    .locals 3

    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "mX":I
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sentryContent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1322
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1323
    .local v1, "location":[I
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sentryContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1324
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1326
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getSongModePosition()I
    .locals 3

    .line 1222
    const/4 v0, 0x0

    .line 1223
    .local v0, "mX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSong:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1224
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1225
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSong:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1226
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1228
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTopPackageName()Ljava/lang/String;
    .locals 5

    .line 2419
    const/4 v0, 0x0

    .line 2420
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    .line 2421
    .local v1, "runingInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v2, :cond_4

    .line 2423
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 2424
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2425
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2432
    :cond_0
    goto :goto_0

    .line 2427
    :catch_0
    move-exception v2

    .line 2428
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 2429
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 2430
    const-string v3, "StatusBarViewForPMA"

    const-string v4, "getTopPackageName info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 2434
    const-string v2, "Unknow"

    return-object v2

    .line 2436
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 2437
    const-string v2, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopPackageName packagename info == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_3
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2441
    :cond_4
    const-string v2, "Unknow"

    return-object v2
.end method

.method private getUsbPosition()I
    .locals 3

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "mUsbX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgUsb:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1292
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1293
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgUsb:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1294
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1296
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getUserPosition()I
    .locals 3

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "mUserX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserCenterll:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1252
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1253
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserCenterll:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1254
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1256
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private initCampSceneModeSettingListener()V
    .locals 4

    .line 726
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 727
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$13;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mRestSceneObserver:Landroid/database/ContentObserver;

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zeekr_bs_camp_mode"

    .line 750
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mRestSceneObserver:Landroid/database/ContentObserver;

    .line 749
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 753
    :cond_0
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "initCampSceneModeSettingListener error "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return-void
.end method

.method private initResetSceneModeSettingListener()V
    .locals 4

    .line 694
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$12;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mRestSceneObserver:Landroid/database/ContentObserver;

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zeekr_bs_rest_mode"

    .line 718
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mRestSceneObserver:Landroid/database/ContentObserver;

    .line 717
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 721
    :cond_0
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "initResetSceneModeSettingListener error "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_0
    return-void
.end method

.method private initSceneMode()V
    .locals 5

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zeekr_bs_camp_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 801
    .local v0, "isOpenCamp":I
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 802
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    .line 803
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->camp_mode:Z

    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0800f6

    goto :goto_0

    :cond_0
    const v3, 0x7f0800f7

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 805
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 806
    return-void

    .line 808
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->camp_mode:Z

    .line 811
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "zeekr_bs_rest_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 812
    .local v3, "isOpenRest":I
    if-eqz v3, :cond_3

    .line 813
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    .line 814
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->reset_mode:Z

    .line 815
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v4, :cond_2

    const v4, 0x7f08067f

    goto :goto_1

    :cond_2
    const v4, 0x7f080680

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 816
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 817
    return-void

    .line 819
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->reset_mode:Z

    .line 821
    return-void
.end method

.method private initSongMode()V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isEnabled()Z

    move-result v0

    .line 482
    .local v0, "isOpenSong":Z
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenSong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-eqz v0, :cond_0

    .line 484
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->songContent:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 486
    :cond_0
    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$23(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$24(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 2489
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBar:Landroid/view/View;

    const-string v1, "#FFF7F8F9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$25(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 2491
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBar:Landroid/view/View;

    const-string v1, "#FF000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$26(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 2494
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$checkSceneMode$1(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 494
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->dismissSceneModePopupWindow()V

    .line 496
    return-void
.end method

.method public static synthetic lambda$onAqiCO2HighChange$15(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)V
    .locals 2
    .param p1, "isHigh"    # Z

    .line 2009
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgCO2Level:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onHideOrShowBtDialerIconChange$18()V
    .locals 2

    .line 2201
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btPhoneContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onHideOrShowBtDialerIconChange$19()V
    .locals 2

    .line 2204
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btPhoneContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onHideOrShowRemoteLogcatIconChange$21(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 2333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->remoteLogcatContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2334
    return-void
.end method

.method public static synthetic lambda$onHideOrShowRemoteLogcatIconChange$22(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 2337
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->remoteLogcatContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2338
    return-void
.end method

.method static synthetic lambda$onOTAMessageChange$16()V
    .locals 2

    .line 2182
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->otaUpdateContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onOTAMessageChange$17()V
    .locals 2

    .line 2184
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->otaUpdateContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onParkComfortModeChange$20(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V
    .locals 1
    .param p1, "ParkComfortValue"    # I

    .line 2255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->updateParkComfortModeView(ZI)V

    .line 2256
    return-void
.end method

.method public static synthetic lambda$onTopActivityChanged$0(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "topActivityInfo"    # Landroid/content/ComponentName;

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.geely.pma.settings.main.ui.activity.DialogShowActivity"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->dismissUserCenterPopupWindow()V

    .line 275
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setInsideAirQualityVisible$9(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setNZPVisablity$4(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setNZPVisablity$5(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setOutsideAirQuality$8(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V
    .locals 1
    .param p1, "aqi"    # Ljava/lang/String;

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideAQI:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$setOutsideTempUnit$11(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTempUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$setOutsideTemperature$10(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V
    .locals 1
    .param p1, "temp"    # Ljava/lang/String;

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$setPDCVisible$13(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgPdc:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setPopupAQSCO2$14(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V
    .locals 2
    .param p1, "level"    # I

    .line 2001
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgCO2Level:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPM25HighConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2002
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgCO2Level:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isCO2Auto:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2AutoIcons:Ljava/util/List;

    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAQSCO2Icons:Ljava/util/List;

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2003
    return-void
.end method

.method public static synthetic lambda$setPreSaleVisablity$6(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setPreSaleVisablity$7(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setRoadSlipVisible$12(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 2

    .line 1975
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgRoadSlip:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$showDebugMode$2()V
    .locals 2

    .line 563
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDebugMode:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$showDebugMode$3()V
    .locals 2

    .line 566
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDebugMode:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private static openApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "packname"    # Ljava/lang/String;
    .param p1, "cname"    # Ljava/lang/String;

    .line 571
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 578
    const-string v2, "SystemUI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 584
    :goto_0
    return-void

    .line 572
    :cond_1
    :goto_1
    return-void
.end method

.method private openChargePage()V
    .locals 4

    .line 2404
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2405
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "openChargePage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2408
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.geely.pma.settings"

    const-string v3, "com.geely.pma.settings.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2410
    const-string v2, "ecarx.intent.action.ECARX_CHARGING_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2411
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2412
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2413
    return-void
.end method

.method private registerNotificationBroadcast()V
    .locals 3

    .line 1106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.zeeker.notificationui.messageUnreadCount"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const-string v1, "ecarx.launcher3.action.LOAD_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1110
    return-void
.end method

.method private registerStatusBarShowBroadcast()V
    .locals 3

    .line 1121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.yfvet.ACTION_STATUS_BAR_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1124
    return-void
.end method

.method private scenceModeOnChanage(IZ)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "isDay"    # Z

    .line 2595
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scenceModeOnChanage current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$39;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2624
    return-void
.end method

.method private sendDvrStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2077
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDvrStatus state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yfve.action.DVR_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2079
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dvrStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2080
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2081
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2082
    return-void
.end method

.method private setAwakeMode(ZZ)V
    .locals 1
    .param p1, "isDay"    # Z
    .param p2, "show"    # Z

    .line 2567
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$37;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2578
    return-void
.end method

.method private setBtPhoneImage(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isDayMode"    # Z

    .line 2209
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBtPhoneImage type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDayMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2211
    if-eqz p2, :cond_0

    .line 2212
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgBtPhone:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080414

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2214
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgBtPhone:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080415

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2216
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 2217
    if-eqz p2, :cond_2

    .line 2218
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgBtPhone:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080412

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2220
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgBtPhone:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080413

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2223
    :cond_3
    :goto_0
    return-void
.end method

.method private setRomanMode(ZZ)V
    .locals 1
    .param p1, "isDay"    # Z
    .param p2, "show"    # Z

    .line 2581
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$38;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$38;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2592
    return-void
.end method

.method private setSceneMode(IZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "isDay"    # Z

    .line 448
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSceneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 459
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->wash_car_mode:Z

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->checkSceneMode()V

    goto :goto_1

    .line 453
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    .line 454
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->wash_car_mode:Z

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    const v2, 0x7f080700

    goto :goto_0

    :cond_2
    const v2, 0x7f080701

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 457
    nop

    .line 463
    :goto_1
    return-void
.end method

.method private setSentryImg(ZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "isDay"    # Z

    .line 432
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSentryImg enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method

.method private static setStatusBarShow(Z)V
    .locals 3
    .param p0, "isStatusBarShow"    # Z

    .line 1201
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarShow isStatusBarShow\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p0, :cond_0

    .line 1203
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btnCloseEva:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1204
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarContents:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1206
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarContents:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1207
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btnCloseEva:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1209
    :goto_0
    return-void
.end method

.method private statusBarDialogChangeTheme()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 1098
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->changeTheme(I)V

    .line 1102
    :cond_3
    return-void
.end method

.method private updateParkComfortModeView(ZI)V
    .locals 4
    .param p1, "isDayUIMode"    # Z
    .param p2, "ParkComfortValue"    # I

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_1

    .line 1331
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1332
    const-string v0, "StatusBarViewForPMA"

    const-string/jumbo v1, "updateParkComfortModeView mCarBodyStateManager = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMsgMode()I

    move-result v0

    .line 1337
    .local v0, "msgMode":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1338
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateParkComfortModeView: ParkComfortValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msgMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_2
    const/16 v1, 0x8

    if-lez p2, :cond_6

    .line 1341
    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 1345
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->parkComfortModeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 1342
    :cond_4
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->parkComfortModeContent:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mParkComfortModeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v2, 0x7f0805f3

    goto :goto_1

    :cond_5
    const v2, 0x7f0805f4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1348
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->parkComfortModeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1350
    :goto_2
    return-void
.end method

.method private updateUsb(ZZ)V
    .locals 3
    .param p1, "isShow"    # Z
    .param p2, "isDayUIMode"    # Z

    .line 2451
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2452
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUsbView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2455
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$34;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2467
    :cond_1
    return-void
.end method


# virtual methods
.method public changeBackgroundResource(IZ)V
    .locals 6
    .param p1, "isday"    # I
    .param p2, "isVis"    # Z

    .line 2470
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    .line 2471
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_stop_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2472
    .local v0, "launcherFlag":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2473
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeBackgroundResource vis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isday "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", launcherFlag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2477
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$7X0mczKbwFM1eHYtDOZADvOrH0o;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$7X0mczKbwFM1eHYtDOZADvOrH0o;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2478
    :cond_1
    if-nez p2, :cond_6

    .line 2479
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v2

    .line 2480
    .local v2, "statusbarMode":I
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2481
    const-string v3, "StatusBarViewForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeBackgroundResource statusbarMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_2
    if-ne v2, v1, :cond_3

    .line 2484
    const/4 p1, 0x1

    goto :goto_0

    .line 2485
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2486
    const/4 p1, 0x2

    .line 2488
    :cond_4
    :goto_0
    if-ne p1, v1, :cond_5

    .line 2489
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$r5zGwv9WKr15HfZqQN2SJgaWZuY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$r5zGwv9WKr15HfZqQN2SJgaWZuY;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2491
    :cond_5
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$eBmOZUYtgOPKC3KZUtwef5sfKpo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$eBmOZUYtgOPKC3KZUtwef5sfKpo;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2493
    .end local v2    # "statusbarMode":I
    :goto_1
    goto :goto_2

    .line 2494
    :cond_6
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$I-YkjTox_fJxAdHOaB8MlHdwP0A;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$I-YkjTox_fJxAdHOaB8MlHdwP0A;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2496
    :goto_2
    return-void
.end method

.method public dismissUserCenterPopupWindow()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->dismissUserCenterPopupWindow()V

    .line 296
    :cond_0
    return-void
.end method

.method public getDvrPosition()I
    .locals 3

    .line 1212
    const/4 v0, 0x0

    .line 1213
    .local v0, "mDvrX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgDvr:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1214
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1215
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgDvr:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1216
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1218
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method public getWirelessChargePosition()I
    .locals 3

    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, "mWirelessChargeX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgWirelessCharge:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1282
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1283
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgWirelessCharge:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1284
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1286
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method public isFullScreen()Z
    .locals 3

    .line 1232
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFullScreen getTopPackageName() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v0, "com.Apinsky.Lite2048.zeekr"

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    const/4 v0, 0x0

    return v0

    .line 1236
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAcPowerStateChange(Z)V
    .locals 3
    .param p1, "isAcPowerState"    # Z

    .line 2227
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2228
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcPowerStateChange: isAcPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_0
    sput-boolean p1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsAcPowerStateOn:Z

    .line 2231
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_1

    .line 2232
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 2234
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setAqiActive(ZZ)V

    .line 2235
    return-void
.end method

.method public onAqiCO2HighChange(Z)V
    .locals 2
    .param p1, "isHigh"    # Z

    .line 2007
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->onAqiCO2HighChange(Z)V

    .line 2008
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPm25PopupDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setAqiDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 2009
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$JU1eGe7VZo6CmoecdnOpQgCLJVY;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2010
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 825
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAttachedToWindow()V

    .line 829
    return-void
.end method

.method public onCarGearChange(I)V
    .locals 1
    .param p1, "gear"    # I

    .line 2344
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$32;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2361
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-nez v0, :cond_0

    .line 1355
    return-void

    .line 1357
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 1404
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getUserPosition()I

    move-result v0

    .line 1405
    .local v0, "userPositionX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->openUserCenterWindow(IZ)V

    .line 1407
    const-string/jumbo v1, "\u7528\u6237"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1408
    goto/16 :goto_4

    .line 1464
    .end local v0    # "userPositionX":I
    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getUsbPosition()I

    move-result v0

    .line 1465
    .local v0, "usbPositionX":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click iv_usb usbPositionX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showUsbPopupWindow(IZ)V

    .line 1467
    const-string v1, "USB"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1468
    goto/16 :goto_4

    .line 1470
    .end local v0    # "usbPositionX":I
    :sswitch_2
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click tv_battery_content current showKilo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentRemainingKilo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentBattery "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    .line 1472
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    const/high16 v1, 0x40400000    # 3.0f

    if-eqz v0, :cond_2

    .line 1473
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1474
    goto/16 :goto_4

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->m_params:Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0x67

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->m_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1480
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->m_params:Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->m_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1485
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    :goto_0
    const-string/jumbo v0, "\u7535\u6c60\u7535\u91cf"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1489
    goto/16 :goto_4

    .line 1501
    :sswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getSongModePosition()I

    move-result v0

    .line 1502
    .local v0, "songModeX":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click songModeX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showSongModePopupWindow(IZ)V

    .line 1504
    const-string/jumbo v1, "\u6b4c\u66f2\u6a21\u5f0f"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1505
    goto/16 :goto_4

    .line 1507
    .end local v0    # "songModeX":I
    :sswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getSentryModePosition()I

    move-result v0

    .line 1508
    .local v0, "sentryModeX":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click sentryModeX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showSentryModePopupWindow(IZ)V

    .line 1510
    goto/16 :goto_4

    .line 1491
    .end local v0    # "sentryModeX":I
    :sswitch_5
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 1492
    goto/16 :goto_4

    .line 1495
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getSceneModePosition()I

    move-result v0

    .line 1496
    .local v0, "sceneModeX":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click sceneModeX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentScene:I

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showSceneModePopupWindow(IZI)V

    .line 1498
    const-string/jumbo v1, "\u60c5\u666f\u6a21\u5f0f"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1499
    goto/16 :goto_4

    .line 1512
    .end local v0    # "sceneModeX":I
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->openRemoteLogcatPage()V

    .line 1513
    const-string/jumbo v0, "\u8fdc\u7a0b\u65e5\u5fd7\u6293\u53d6"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1514
    goto/16 :goto_4

    .line 1458
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getWirelessChargePosition()I

    move-result v0

    .line 1459
    .local v0, "wirelessChargePositionX":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click pma_icon_wpc wirelessChargePositionX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showWirelessChargePopupWindow(IZ)V

    .line 1461
    const-string/jumbo v1, "\u65e0\u7ebf\u5145\u7535"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1462
    goto/16 :goto_4

    .line 1390
    .end local v0    # "wirelessChargePositionX":I
    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1393
    :cond_5
    sget v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateClockTouchNum:I

    add-int/2addr v0, v2

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateClockTouchNum:I

    .line 1394
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "onClick: pma_date_layout_date_format"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showCalendarDialog()V

    .line 1396
    const-string/jumbo v0, "\u65f6\u95f4"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1397
    goto/16 :goto_4

    .line 1527
    :sswitch_9
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "lowTempSnowContent click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getLowTempSnowPosition()I

    move-result v0

    .line 1529
    .local v0, "snowPositionX":I
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click iv_usb usbPositionX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showLowTemperatureSnowDialog(IZI)V

    .line 1531
    const-string/jumbo v1, "\u4f4e\u6e29\u96ea\u82b1"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1532
    goto/16 :goto_4

    .line 1373
    .end local v0    # "snowPositionX":I
    :sswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->openOTAPage()V

    .line 1375
    const-string v0, "OTA\u5347\u7ea7"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1376
    goto/16 :goto_4

    .line 1516
    :sswitch_b
    const-string v0, "StatusBarViewForPMA"

    const-string v3, "mSaleModeExitBtn click"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    if-nez v0, :cond_8

    .line 1518
    new-instance v0, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->create()V

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->changeTheme(I)V

    .line 1523
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSaleModeExitDialog:Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SaleModeExitDialog;->setDialogShow()V

    .line 1524
    const-string/jumbo v0, "\u552e\u524d\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1525
    goto/16 :goto_4

    .line 1359
    :sswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->openPDCPage()V

    .line 1360
    goto/16 :goto_4

    .line 1386
    :sswitch_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->openNZPActivity()V

    .line 1387
    const-string v0, "NZP\u9ad8\u901f\u81ea\u4e3b\u5bfc\u822a"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1388
    goto/16 :goto_4

    .line 1410
    :sswitch_e
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "click img_notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1413
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zeekr.intent.action.PANEL_CHANGE_TAB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1415
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1416
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openNotification()V

    .line 1418
    const-string/jumbo v1, "\u901a\u77e5\u4e2d\u5fc3"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1419
    goto/16 :goto_4

    .line 1368
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getDvrPosition()I

    move-result v0

    .line 1369
    .local v0, "dvrPositionX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showDvrPopupWindow(IZ)V

    .line 1370
    const-string/jumbo v1, "\u884c\u8f66\u8bb0\u5f55\u4eea"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1371
    goto/16 :goto_4

    .line 1399
    .end local v0    # "dvrPositionX":I
    :sswitch_10
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ecarx.btphone.broadcast.action.ACTION_MINI_FLOAT_CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1401
    const-string/jumbo v0, "\u84dd\u7259\u7535\u8bdd"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1402
    goto/16 :goto_4

    .line 1421
    :sswitch_11
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click eva, iEvaService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const-string v0, "eva"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1424
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    if-eqz v0, :cond_9

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    invoke-interface {v0}, Lcom/zeekr/eva/service/IEvaService;->onMascotClick()V

    goto :goto_2

    .line 1427
    :cond_9
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "btn_notifyEva iEvaService is null, bind service again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->bindServiceInterface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_2
    goto :goto_4

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1433
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 1435
    :sswitch_12
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click close eva, iEvaService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const-string/jumbo v0, "\u5173\u95edeva"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1438
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    if-eqz v0, :cond_a

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    invoke-interface {v0}, Lcom/zeekr/eva/service/IEvaService;->onVRStatusBarCloseClick()V

    goto :goto_3

    .line 1441
    :cond_a
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "btn_closeEva iEvaService is null, bind service again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->bindServiceInterface()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1446
    :goto_3
    goto :goto_4

    .line 1444
    :catch_1
    move-exception v0

    .line 1445
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1447
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 1379
    :sswitch_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->openChargePage()V

    .line 1383
    const-string/jumbo v0, "\u7535\u6c60"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1384
    goto :goto_4

    .line 1362
    :sswitch_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getAqiPosition()I

    move-result v0

    .line 1363
    .local v0, "aqiPositionX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showStatusPopupWindow(IZ)V

    .line 1365
    const-string/jumbo v1, "\u7a7a\u6c14\u8d28\u91cf"

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackStatusBarClick(Ljava/lang/String;)V

    .line 1366
    nop

    .line 1536
    .end local v0    # "aqiPositionX":I
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0061 -> :sswitch_14
        0x7f0a007f -> :sswitch_13
        0x7f0a00a6 -> :sswitch_12
        0x7f0a00a9 -> :sswitch_11
        0x7f0a01d1 -> :sswitch_10
        0x7f0a01e5 -> :sswitch_f
        0x7f0a01f3 -> :sswitch_e
        0x7f0a01f4 -> :sswitch_d
        0x7f0a0202 -> :sswitch_c
        0x7f0a0204 -> :sswitch_b
        0x7f0a0211 -> :sswitch_a
        0x7f0a02ab -> :sswitch_9
        0x7f0a0374 -> :sswitch_8
        0x7f0a037d -> :sswitch_7
        0x7f0a03ad -> :sswitch_6
        0x7f0a03d9 -> :sswitch_5
        0x7f0a0414 -> :sswitch_4
        0x7f0a043a -> :sswitch_3
        0x7f0a04af -> :sswitch_2
        0x7f0a04fd -> :sswitch_1
        0x7f0a04ff -> :sswitch_0
    .end sparse-switch
.end method

.method public onClosingFinished()V
    .locals 1

    .line 2127
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 2128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->onClosingFinished()V

    .line 2129
    return-void
.end method

.method public onDayNightModeChange(I)V
    .locals 6
    .param p1, "dayNightMode"    # I

    .line 946
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_stop_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 947
    .local v0, "launcherFlag":I
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "Entertainment_open"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 949
    .local v1, "oneWorld":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    .line 950
    const/4 v2, 0x0

    .local v2, "isDay":Z
    :goto_0
    goto :goto_1

    .line 951
    .end local v2    # "isDay":Z
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 952
    const/4 v2, 0x1

    goto :goto_0

    .line 953
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 954
    const/4 v2, 0x0

    goto :goto_0

    .line 956
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    nop

    .line 959
    .restart local v2    # "isDay":Z
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 960
    const-string v3, "StatusBarViewForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeStatusBarTheme: isDayUIMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAlreadyLogin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAlreadyLogin:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " vis "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-ne v2, v3, :cond_5

    .line 963
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 964
    return-void

    .line 966
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 969
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->changeStatusBarTheme()V

    .line 970
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->onDayNightModeChange(Z)V

    .line 971
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 833
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onDetachedFromWindow()V

    .line 838
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .line 2139
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 2140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 300
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    .line 301
    const v0, 0x7f0a0448

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBar:Landroid/view/View;

    .line 302
    const v0, 0x7f0a04d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTemp:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f0a04d3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideTempUnit:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0a04c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvInsideAQI:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f0a01ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgInsideAQI:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    .line 307
    const v0, 0x7f0a04d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvOutsideAQI:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0a0208

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgRoadSlip:Landroid/widget/ImageView;

    .line 310
    const v0, 0x7f0a0373

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 311
    const v0, 0x7f0a0202

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgPdc:Landroid/widget/ImageView;

    .line 312
    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryLin:Landroid/view/View;

    .line 313
    const v0, 0x7f0a04ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBattery:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->m_params:Landroid/view/ViewGroup$LayoutParams;

    .line 315
    const v0, 0x7f0a04af

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBatteryContent:Landroid/widget/FrameLayout;

    .line 316
    const v0, 0x7f0a0210

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgUpdate:Landroid/widget/ImageView;

    .line 317
    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->otaUpdateContent:Landroid/widget/FrameLayout;

    .line 318
    const v0, 0x7f0a01f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgNotification:Landroid/widget/ImageView;

    .line 319
    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgNotificationContent:Landroid/widget/FrameLayout;

    .line 320
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryState:Landroid/widget/ImageView;

    .line 321
    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryIcon:Landroid/widget/ImageView;

    .line 322
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    .line 323
    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgDvr:Landroid/widget/ImageView;

    .line 324
    const v0, 0x7f0a01e5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->dvrContent:Landroid/widget/FrameLayout;

    .line 325
    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lowTempSnowContent:Landroid/widget/FrameLayout;

    .line 326
    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgSnow:Landroid/widget/ImageView;

    .line 327
    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgBtPhone:Landroid/widget/ImageView;

    .line 328
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btPhoneContent:Landroid/widget/LinearLayout;

    .line 329
    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCar:Landroid/widget/ImageView;

    .line 330
    const v0, 0x7f0a04b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvClock:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    .line 332
    const v0, 0x7f0a01f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    .line 333
    const v0, 0x7f0a0204

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    .line 334
    const v0, 0x7f0a0374

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 335
    const v0, 0x7f0a04ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserCenterll:Landroid/widget/FrameLayout;

    .line 336
    const v0, 0x7f0a0500

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserHot:Landroid/widget/FrameLayout;

    .line 337
    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserAccountView:Landroid/widget/ImageView;

    .line 338
    const v0, 0x7f0a04e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvUserAccount:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f0a01d3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    .line 340
    const v0, 0x7f0a0468

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->TemperatureAqiArea:Landroid/widget/LinearLayout;

    .line 341
    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->layoutShowEva:Landroid/widget/LinearLayout;

    .line 342
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btnNotifyEva:Landroid/widget/Button;

    .line 343
    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarContents:Landroid/widget/FrameLayout;

    .line 344
    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btnCloseEva:Landroid/widget/Button;

    .line 345
    const v0, 0x7f0a037a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mParkComfortModeView:Landroid/widget/ImageView;

    .line 346
    const v0, 0x7f0a037b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->parkComfortModeContent:Landroid/widget/FrameLayout;

    .line 347
    const v0, 0x7f0a037c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgWirelessCharge:Landroid/widget/ImageView;

    .line 348
    const v0, 0x7f0a037d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    .line 349
    const v0, 0x7f0a022e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgUsb:Landroid/widget/ImageView;

    .line 350
    const v1, 0x7f0a04fd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->usbContent:Landroid/widget/FrameLayout;

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUsbView:Landroid/widget/ImageView;

    .line 352
    const v0, 0x7f0a04aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvAqiPm25:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgCO2Level:Landroid/widget/ImageView;

    .line 354
    const v0, 0x7f0a0375

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDebugMode:Landroid/widget/FrameLayout;

    .line 355
    const v0, 0x7f0a04b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvDebugMode:Landroid/widget/TextView;

    .line 356
    const v0, 0x7f0a0209

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgScene:Landroid/widget/ImageView;

    .line 357
    const v0, 0x7f0a020c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSong:Landroid/widget/ImageView;

    .line 358
    const v0, 0x7f0a03d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    .line 359
    const v0, 0x7f0a043a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->songContent:Landroid/widget/FrameLayout;

    .line 360
    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgSentry:Landroid/widget/ImageView;

    .line 361
    const v0, 0x7f0a0414

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sentryContent:Landroid/widget/FrameLayout;

    .line 362
    const v0, 0x7f0a0206

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgRemoteLogcat:Landroid/widget/ImageView;

    .line 363
    const v0, 0x7f0a03ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->remoteLogcatContent:Landroid/widget/FrameLayout;

    .line 365
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgPdc:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->aqiContent:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->dvrContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->otaUpdateContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgNotificationContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryLin:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgBtPhone:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserCenterll:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sceneModeContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->songContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sentryContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->remoteLogcatContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sentryContent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentCarGear()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDateAndClockBarView:Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btnNotifyEva:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btnCloseEva:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->wirelessChargeContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->usbContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvBatteryContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lowTempSnowContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$kGyCvc-MnZxYOWNqiC1FrF16pbk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgInsideAQI:Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setIndicatorColor(I)V

    .line 394
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "StatusBarViewForPMA"

    const-string v3, "onFinishInflate: changeStatusBarTheme"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "launcher_stop_flag"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 398
    .local v0, "launcherFlag":I
    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Entertainment_open"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 399
    .local v3, "oneWorld":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-ne v3, v4, :cond_3

    .line 400
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    goto :goto_1

    .line 401
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 402
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    goto :goto_1

    .line 403
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 404
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    goto :goto_1

    .line 406
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v5

    if-ne v5, v4, :cond_6

    move v2, v4

    nop

    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    .line 408
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->changeStatusBarTheme()V

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->registerNotificationBroadcast()V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->registerStatusBarShowBroadcast()V

    .line 415
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsPm25LayoutVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setInsideAirQualityVisible(Z)V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->bindServiceInterface()V

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOtaPreSaleVisablity()V

    .line 418
    const-string v2, "persist.did.usbmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showDebugMode(I)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getEnduranceMileage()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    .line 420
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 421
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate currentRemainingKilo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->initResetSceneModeSettingListener()V

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->initCampSceneModeSettingListener()V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->initSceneMode()V

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->initSongMode()V

    .line 429
    return-void
.end method

.method public onHideOrShowBtDialerIconChange(ZI)V
    .locals 3
    .param p1, "isShowIcon"    # Z
    .param p2, "type"    # I

    .line 2193
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 2194
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 2196
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2197
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHideOrShowBtDialerIconChange isShowIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDayUIMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_1
    sput p2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->btPhoneType:I

    .line 2200
    if-eqz p1, :cond_2

    .line 2201
    sget-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$A17yAGuV0kwF-0fM57IlI2RUxEU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$A17yAGuV0kwF-0fM57IlI2RUxEU;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBtPhoneImage(IZ)V

    goto :goto_0

    .line 2204
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$fuRTxlnJW_AqJ4Ilvc8xPOFtxnI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$fuRTxlnJW_AqJ4Ilvc8xPOFtxnI;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2206
    :goto_0
    return-void
.end method

.method public onHideOrShowRemoteLogcatIconChange(Z)V
    .locals 3
    .param p1, "isShowIcon"    # Z

    .line 2328
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2329
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHideOrShowRemoteLogcatIconChange isShowIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    if-eqz p1, :cond_1

    .line 2332
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$ANWh8huM1wQKQBScA_0sa-VVfSI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$ANWh8huM1wQKQBScA_0sa-VVfSI;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2336
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$RxLLDIMXZvSyoDSu7BjNM3wHHNY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$RxLLDIMXZvSyoDSu7BjNM3wHHNY;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2340
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onMicModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2296
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->onMicChange(I)V

    .line 2299
    :cond_0
    return-void
.end method

.method public onMicModeVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 2303
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->onMicVolume(I)V

    .line 2306
    :cond_0
    return-void
.end method

.method public onMicReverb(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 2310
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->onMicReverb(I)V

    .line 2313
    :cond_0
    return-void
.end method

.method public onOTAMessageChange(I)V
    .locals 5
    .param p1, "MessageId"    # I

    .line 2169
    const/4 v0, 0x0

    .line 2170
    .local v0, "mOTAIconHide":I
    const/4 v1, 0x1

    .line 2172
    .local v1, "mOTAIconShow":I
    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->otaUpdateContent:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 2173
    return-void

    .line 2175
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2176
    const-string v2, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOTAMessageChange--MessageId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :cond_1
    const-string v2, "persist.ota.status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    if-ne p1, v1, :cond_2

    .line 2182
    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$DfDnEf6Pir85tWflWCFiC3hLE78;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$DfDnEf6Pir85tWflWCFiC3hLE78;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2183
    :cond_2
    if-ne p1, v0, :cond_3

    .line 2184
    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$88Jreb_1XLTyhhxDjBLi14JMZJg;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$88Jreb_1XLTyhhxDjBLi14JMZJg;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2189
    :cond_3
    :goto_0
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    .line 2102
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 2103
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsFullyOpenedPanel:Z

    .line 2105
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 3

    .line 2109
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 2110
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelFullyOpened mIsFullyOpenedPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsFullyOpenedPanel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_0

    .line 2112
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "onPanelFullyOpened send TYPE_WINDOW_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 2115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsFullyOpenedPanel:Z

    .line 2116
    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    .line 2096
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 2097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->makeExpandedVisible(Z)V

    .line 2098
    return-void
.end method

.method public onParkComfortModeChange(I)V
    .locals 1
    .param p1, "ParkComfortValue"    # I

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 2252
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 2254
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$xijSV87eAafbZ2CCBtiY_jTdwG0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$xijSV87eAafbZ2CCBtiY_jTdwG0;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2257
    return-void
.end method

.method public onParkComfortModeLeftTimeChange(I)V
    .locals 1
    .param p1, "ParkComfortLeftTime"    # I

    .line 2261
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$30;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$30;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2274
    return-void
.end method

.method public onSceneModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2278
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$31;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2284
    return-void
.end method

.method public onSentryModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 2317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->onSentryModeChange(I)V

    .line 2320
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2321
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSentryModeChange mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setSentryImg(ZZ)V

    .line 2324
    return-void
.end method

.method public onSongModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->onSongModeChange(I)V

    .line 2291
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->songContent:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2292
    return-void
.end method

.method public onStatusBarModeChange(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 2365
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2366
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusBarModeChange mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_stop_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2369
    .local v0, "launcherFlag":I
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "Entertainment_open"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2371
    .local v1, "oneWorld":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    .line 2372
    const/4 v2, 0x0

    .local v2, "isDay":Z
    :goto_0
    goto :goto_1

    .line 2373
    .end local v2    # "isDay":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 2374
    const/4 v2, 0x1

    goto :goto_0

    .line 2375
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 2376
    const/4 v2, 0x0

    goto :goto_0

    .line 2378
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    nop

    .line 2380
    .restart local v2    # "isDay":Z
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-ne v2, v3, :cond_5

    .line 2381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 2382
    return-void

    .line 2384
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 2385
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    .line 2387
    new-instance v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$33;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$33;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2394
    return-void
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "topActivityInfo"    # Landroid/content/ComponentName;

    .line 255
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopActivityChanged : topActivityInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->vis:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->changeBackgroundResource(IZ)V

    .line 259
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_stop_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "launcherFlag":I
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "Entertainment_open"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, "oneWorld":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    .line 263
    const/4 v2, 0x0

    .local v2, "isDay":Z
    :goto_0
    goto :goto_1

    .line 264
    .end local v2    # "isDay":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 265
    const/4 v2, 0x1

    goto :goto_0

    .line 266
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getStatusBarMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 267
    const/4 v2, 0x0

    goto :goto_0

    .line 269
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    nop

    .line 271
    .restart local v2    # "isDay":Z
    :cond_4
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$uXYf8lVuBUAc1z-XCVu7UalLEho;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 276
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-ne v2, v3, :cond_5

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 278
    return-void

    .line 280
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->statusBarDialogChangeTheme()V

    .line 281
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    .line 283
    new-instance v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1552
    .local v0, "barConsumedEvent":Z
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 2120
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 2121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->onTrackingStarted()V

    .line 2122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->removePendingHideExpandedRunnables()V

    .line 2123
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 2133
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 2134
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->onTrackingStopped(Z)V

    .line 2135
    return-void
.end method

.method public onUSBModeChange(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .line 2447
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->updateUsb(ZZ)V

    .line 2448
    return-void
.end method

.method public onWPCChargeModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 934
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWPCChargeModeChange ,mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setWirelessChargeText(I)V

    goto :goto_0

    .line 940
    :cond_1
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWPCChargeModeChange ,mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void
.end method

.method public openRemoteLogcatPage()V
    .locals 2

    .line 1539
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1540
    const-string v0, "StatusBarViewForPMA"

    const-string v1, "openRemoteLogcatPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1543
    .local v0, "logcat_intent":Landroid/content/Intent;
    const-string v1, "com.geely.pma.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    const-string v1, "ecarx.intent.action.ECARX_OTA_UPLOAD_SYSTEM_LOG_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1546
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1547
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 0
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .line 2149
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 2150
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPanelFraction:F

    .line 2151
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 0
    .param p1, "minFraction"    # F

    .line 2087
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2155
    return-void
.end method

.method public setAccountPhoto(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isHasLogin"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "photoUrl"    # Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    sput-boolean p1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isAlreadyLogin:Z

    .line 867
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCurrentId:Ljava/lang/String;

    .line 868
    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCurrentIdUrl:Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 870
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 872
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 873
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountPhoto:entering : isDayUIMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHasLogin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1
    if-eqz p1, :cond_2

    .line 876
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$15;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 920
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 922
    :cond_2
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountPhoto: isHasLogin == false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserAccountView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805b7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mUserAccountView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805b6

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    :goto_0
    return-void
.end method

.method public setAqiActive(ZZ)V
    .locals 4
    .param p1, "active"    # Z
    .param p2, "isDayMode"    # Z

    .line 1590
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAqiActive active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDayMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1592
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCar:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804af

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1594
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCar:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804b0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1596
    :goto_0
    if-eqz p1, :cond_3

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvInsideAQI:Landroid/widget/TextView;

    const v1, -0x4b4642

    const v2, -0xc7c5c3

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvAqiPm25:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCar:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 1601
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->tvInsideAQI:Landroid/widget/TextView;

    const v1, 0x66b4b9be

    const v2, 0x66383a3d

    if-eqz p2, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mTvAqiPm25:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCar:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1605
    :goto_3
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 1556
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 1557
    return-void
.end method

.method public setBatteryACState(I)V
    .locals 1
    .param p1, "batteryACState"    # I

    .line 1766
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryACState:I

    .line 1767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryACState(I)V

    .line 1769
    return-void
.end method

.method public setBatteryChargingView(Z)V
    .locals 5
    .param p1, "isDay"    # Z

    .line 1669
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatteryChargingView batteryChargingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryChargingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", electricityLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->electricityLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getTopBarBatteryLevel()F

    move-result v0

    .line 1671
    .local v0, "batteryLevel":F
    sget v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryChargingState:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v1, v4, :cond_15

    .line 1672
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->setVisibility(I)V

    .line 1673
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1674
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryIconColor()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v4, :cond_5

    .line 1675
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 1676
    if-eqz p1, :cond_0

    .line 1677
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803c6

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1679
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803c7

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1681
    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 1682
    if-eqz p1, :cond_2

    .line 1683
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803ca

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1685
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803cb

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1688
    :cond_3
    if-eqz p1, :cond_4

    .line 1689
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803cc

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1691
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803cd

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1694
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryIconColor()I

    move-result v1

    if-nez v1, :cond_16

    .line 1695
    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    .line 1696
    if-eqz p1, :cond_6

    .line 1697
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803ce

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1699
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803cf

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1701
    :cond_7
    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_9

    .line 1702
    if-eqz p1, :cond_8

    .line 1703
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d0

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1705
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1707
    :cond_9
    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    .line 1708
    if-eqz p1, :cond_a

    .line 1709
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d2

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1711
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d3

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1713
    :cond_b
    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_d

    .line 1714
    if-eqz p1, :cond_c

    .line 1715
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1717
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1719
    :cond_d
    const/high16 v1, 0x428c0000    # 70.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    .line 1720
    if-eqz p1, :cond_e

    .line 1721
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d6

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1723
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d7

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1725
    :cond_f
    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_11

    .line 1726
    if-eqz p1, :cond_10

    .line 1727
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d8

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1729
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803d9

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1731
    :cond_11
    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    .line 1732
    if-eqz p1, :cond_12

    .line 1733
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803da

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1735
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803db

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1737
    :cond_13
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_16

    .line 1738
    if-eqz p1, :cond_14

    .line 1739
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803c8

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1741
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803c9

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1746
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->imgCharging:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1747
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->setBatteryDay(Z)V

    .line 1748
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->setVisibility(I)V

    .line 1749
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryView:Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;

    sget v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->electricityLevel:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryIconColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarBatteryViewForPMA;->setBatteryLevel(FI)V

    .line 1751
    :cond_16
    :goto_0
    return-void
.end method

.method public setBatteryColor(I)V
    .locals 0
    .param p1, "batteryColor"    # I

    .line 1902
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryColor:I

    .line 1903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryIcon()V

    .line 1904
    return-void
.end method

.method public setBatteryDCState(I)V
    .locals 1
    .param p1, "batteryDCState"    # I

    .line 1772
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryDCState:I

    .line 1773
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V

    .line 1774
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryDCState(I)V

    .line 1775
    return-void
.end method

.method public setBatteryFailure(I)V
    .locals 1
    .param p1, "batteryFail"    # I

    .line 1895
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryFail:I

    .line 1896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V

    .line 1897
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryIcon()V

    .line 1898
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryFailure(I)V

    .line 1899
    return-void
.end method

.method public setBatteryIcon()V
    .locals 4

    .line 1959
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 1960
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 1962
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryFail:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1963
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0804b8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 1964
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0804b7

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1963
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1965
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mBatteryColor:I

    if-ne v0, v1, :cond_3

    .line 1966
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0804bf

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1968
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0804b4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1969
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0804b3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1968
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1971
    :goto_2
    return-void
.end method

.method public setBatteryLevel(F)V
    .locals 3
    .param p1, "batteryLevel"    # F

    .line 1634
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1635
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatteryLevel batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", showKilo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    .line 1638
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$21;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1666
    return-void
.end method

.method public setBatteryPreheatingChange(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1926
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setBatteryPreheatingChange(I)V

    .line 1927
    return-void
.end method

.method public setBatteryStateIcon()V
    .locals 1

    .line 1790
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$23;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1892
    return-void
.end method

.method public setBatteryTemp(IZ)V
    .locals 5
    .param p1, "temp"    # I
    .param p2, "isNeedShow"    # Z

    .line 1908
    if-gez p1, :cond_0

    const/16 v0, -0x14

    if-le p1, v0, :cond_0

    if-eqz p2, :cond_5

    .line 1909
    :cond_0
    if-gez p1, :cond_4

    .line 1910
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryTemp:I

    if-gez v0, :cond_1

    if-nez p2, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lowTempSnowContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1911
    :cond_1
    const-string v0, "StatusBarViewForPMA"

    const-string/jumbo v1, "setBatteryTemp: Low Temperature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getLowTempSnowPosition()I

    move-result v0

    .line 1913
    .local v0, "snowPositionX":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-nez v0, :cond_2

    const/16 v2, 0xc4

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showLowTemperatureSnowDialog(IZI)V

    .line 1915
    .end local v0    # "snowPositionX":I
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lowTempSnowContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1917
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getLowTempSnowPosition()I

    move-result v0

    .line 1918
    .restart local v0    # "snowPositionX":I
    sget-object v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->lowTempSnowContent:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1919
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->showLowTemperatureSnowDialog(IZI)V

    .line 1922
    .end local v0    # "snowPositionX":I
    :cond_5
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->batteryTemp:I

    .line 1923
    return-void
.end method

.method public setChargeACCapAvail(I)V
    .locals 1
    .param p1, "chargeACCapAvail"    # I

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setChargeACCapAvail(I)V

    .line 2037
    return-void
.end method

.method public setChargeACCapState(I)V
    .locals 1
    .param p1, "chargeACCapState"    # I

    .line 2029
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setChargeACCapState(I)V

    .line 2030
    return-void
.end method

.method public setChargeDCCapAvail(I)V
    .locals 1
    .param p1, "chargeDCCapAvail"    # I

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setChargeDCCapAvail(I)V

    .line 2040
    return-void
.end method

.method public setChargeDCCapState(I)V
    .locals 1
    .param p1, "chargeDCCapState"    # I

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setChargeDCCapState(I)V

    .line 2034
    return-void
.end method

.method public setChargeSOCLevel(F)V
    .locals 1
    .param p1, "chargeSOCLevel"    # F

    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setChargeSOCLevel(F)V

    .line 2014
    return-void
.end method

.method public setDisChargeSOCLevel(F)V
    .locals 1
    .param p1, "disChargeSOCLevel"    # F

    .line 2017
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setDisChargeSOCLevel(F)V

    .line 2018
    return-void
.end method

.method public setDvrState(I)V
    .locals 3
    .param p1, "dvrState"    # I

    .line 2053
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->sendDvrStatus(I)V

    .line 2055
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 2056
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 2058
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mDvrStateForTheme:I

    .line 2059
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2060
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDvrState: dvrState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$27;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2071
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_2

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupDvrStateIcons(I)V

    .line 2074
    :cond_2
    return-void
.end method

.method public setDvrViewVisible(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .line 1617
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    if-eqz p1, :cond_0

    .line 1619
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->dvrContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1621
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->dvrContent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1623
    :goto_0
    return-void
.end method

.method public setEnduranceMileage(I)V
    .locals 3
    .param p1, "enduranceMileage"    # I

    .line 1934
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1935
    const-string v0, "StatusBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnduranceMileage: enduranceMileage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showKilo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentBattery "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentRemainingKilo:I

    .line 1938
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->currentBattery:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1939
    return-void

    .line 1941
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showKilo:Z

    if-eqz v0, :cond_2

    .line 1942
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$24;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1951
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setEnduranceMileage(I)V

    .line 1952
    return-void
.end method

.method public setEstimateTime(F)V
    .locals 1
    .param p1, "estimateTime"    # F

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setEstimateTime(F)V

    .line 1931
    return-void
.end method

.method public setInsideAirQuality(Ljava/lang/String;)V
    .locals 1
    .param p1, "aqi"    # Ljava/lang/String;

    .line 1574
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$20;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupAirQuality(Ljava/lang/String;)V

    .line 1583
    return-void
.end method

.method public setInsideAirQualityVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1608
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIsPm25LayoutVisible:Z

    .line 1609
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$9kwJZFtwnYuiPhR8Xg8HffYFXhE;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$9kwJZFtwnYuiPhR8Xg8HffYFXhE;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupAirQualityVisible(Z)V

    .line 1614
    :cond_0
    return-void
.end method

.method public setNZPVisablity(Z)V
    .locals 1
    .param p1, "isVisble"    # Z

    .line 841
    if-eqz p1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 843
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$4ZEGkfDPma_xA9cZ6fdc0uAqXWE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$4ZEGkfDPma_xA9cZ6fdc0uAqXWE;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgNzpBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 847
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$XBo1LUy1YACB3B6JSsfoIEyrtNk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$XBo1LUy1YACB3B6JSsfoIEyrtNk;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 850
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnViewClickListener(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;)V
    .locals 3
    .param p1, "iStatusbarOnViewClickListener"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    .line 619
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-nez v0, :cond_0

    .line 622
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v0

    .line 625
    .local v0, "uimode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->changeTheme(I)V

    .line 626
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$5;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setDvrDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 635
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$6;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setSceneModeDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 644
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$7;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setSentryModeDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 653
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPm25PopupDialogListener:Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setAqiDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 654
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$8;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setCalendarDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 663
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$9;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setWirelessChargeListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$10;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setUsbListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 681
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$11;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setLowTempSnowListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 691
    .end local v0    # "uimode":I
    :cond_1
    return-void
.end method

.method public setOtaPreSaleVisablity()V
    .locals 4

    .line 587
    const-string v0, "persist.ota.mode"

    const-string v1, "AFTER_SALE_MODE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFTER_SALE_MODE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 588
    .local v0, "isVisble":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 589
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOtaPreSaleVisablity isVisble "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPreSaleVisablity(Z)V

    .line 592
    return-void
.end method

.method public setOutsideAirQuality(Ljava/lang/String;)V
    .locals 1
    .param p1, "aqi"    # Ljava/lang/String;

    .line 1560
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$CpgW6zk50RklsgLK9Id3G8_1CxI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$CpgW6zk50RklsgLK9Id3G8_1CxI;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1561
    return-void
.end method

.method public setOutsideTempUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;

    .line 1630
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$rnrDqUz52oiI0Lp7oueevOczpjc;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$rnrDqUz52oiI0Lp7oueevOczpjc;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1631
    return-void
.end method

.method public setOutsideTemperature(Ljava/lang/String;)V
    .locals 1
    .param p1, "temp"    # Ljava/lang/String;

    .line 1626
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$r3CteA56jGQyvmtMN5Q6Th6yfh4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$r3CteA56jGQyvmtMN5Q6Th6yfh4;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1627
    return-void
.end method

.method public setPDCVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1980
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$N1TN8n-LQFCLLJPmTixUiAhNhNE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$N1TN8n-LQFCLLJPmTixUiAhNhNE;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1981
    return-void
.end method

.method public setPlugACState(I)V
    .locals 1
    .param p1, "plugACState"    # I

    .line 1778
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPlugACState:I

    .line 1779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupAcState(I)V

    .line 1781
    return-void
.end method

.method public setPlugDCState(I)V
    .locals 1
    .param p1, "plugDCState"    # I

    .line 1784
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mPlugDCState:I

    .line 1785
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryStateIcon()V

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupDcState(I)V

    .line 1787
    return-void
.end method

.method public setPm25ContentInversion()V
    .locals 1

    .line 1564
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$19;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1571
    return-void
.end method

.method public setPm25Value(I)V
    .locals 1
    .param p1, "aqiValue"    # I

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupPm25Value(I)V

    .line 1587
    return-void
.end method

.method public setPopupAQSCO2(II)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "auto"    # I

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupAQSCO2(II)V

    .line 1998
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isCO2Auto:Z

    .line 1999
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mAqiCO2Level:I

    .line 2000
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$-rZdE5UBnXMpiLxkB6kWnLdraVY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$-rZdE5UBnXMpiLxkB6kWnLdraVY;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 2004
    return-void
.end method

.method public setPopupAQSColor(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "AQIStatus"    # I

    .line 1993
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setPopupAQSColor(ZI)V

    .line 1994
    return-void
.end method

.method public setPreSaleVisablity(Z)V
    .locals 1
    .param p1, "isVisble"    # Z

    .line 853
    if-eqz p1, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 855
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$D85G-KZEQxbNdV1c0mh1pJuEOcQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$D85G-KZEQxbNdV1c0mh1pJuEOcQ;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mImgPreSale:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 859
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$3rsGpV3XnRjeQU2ipObmXQIsGUc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$3rsGpV3XnRjeQU2ipObmXQIsGUc;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 862
    :cond_1
    :goto_0
    return-void
.end method

.method public setRoadSlipVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1975
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$PDReV66cL8FJaHHBpW6AS6ZTXw4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$PDReV66cL8FJaHHBpW6AS6ZTXw4;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1976
    return-void
.end method

.method public setTopBarBatteryColor(I)V
    .locals 1
    .param p1, "batteryColor"    # I

    .line 1755
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$22;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$22;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1763
    return-void
.end method

.method public setUnitDrvDis(I)V
    .locals 1
    .param p1, "unitDis"    # I

    .line 1955
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setUnitDrvDis(I)V

    .line 1956
    return-void
.end method

.method public setV2LState(I)V
    .locals 1
    .param p1, "v2LState"    # I

    .line 2025
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setV2LState(I)V

    .line 2026
    return-void
.end method

.method public setV2VState(I)V
    .locals 1
    .param p1, "v2VState"    # I

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->mIStatusbarOnViewClickListener:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;->setV2VState(I)V

    .line 2022
    return-void
.end method

.method public showDebugMode(I)V
    .locals 2
    .param p1, "showStatus"    # I

    .line 562
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 563
    sget-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$diaSG0qq7SRhKAMk6IEG7rtbmKM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$diaSG0qq7SRhKAMk6IEG7rtbmKM;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 565
    :cond_0
    const-string v0, "persist.usb.mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$MX-_46CCy6kDb_kUUpcWUzqv1xQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarViewForPMA$MX-_46CCy6kDb_kUUpcWUzqv1xQ;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 568
    :goto_0
    return-void
.end method
