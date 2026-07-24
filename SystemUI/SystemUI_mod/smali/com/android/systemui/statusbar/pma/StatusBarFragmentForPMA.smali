.class public Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
.super Landroid/app/Fragment;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z

.field private static isUserApiInitSuccess:Z

.field private static mParkingShowStatus:I


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private hasUserLogin:Z

.field private isCO2High:Z

.field private isFirst:Z

.field private isFirstReady:Ljava/lang/Boolean;

.field private loginCallBack:Lcom/ecarx/eas/sdk/userv2/ILoginListener;

.field private mAccountExitDialog:Lcom/android/systemui/statusbar/pma/AccountExitDialog;

.field private mAccountId:Ljava/lang/String;

.field private mAccountName:Ljava/lang/String;

.field private mAccountPhtotUrl:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mCalendarDialog:Lcom/android/systemui/statusbar/pma/CalendarDialog;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/user/bean/AccountBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

.field private mHandler:Landroid/os/Handler;

.field private mNZPReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

.field private mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

.field private mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

.field private mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

.field private mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

.field private mSongModePopupWindow:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

.field private mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private mStatusBarForPMA:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field private mSystemIconArea:Landroid/widget/LinearLayout;

.field private mTvUserAccount:Landroid/widget/TextView;

.field private mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

.field private mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

.field private mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

.field private mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

.field private mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

.field private mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

.field private mlowTemperatureSnowDialog:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

.field private needRelogin:Z

.field private profileId:[I

.field private profileName:[Ljava/lang/String;

.field private reLoginUserId:Ljava/lang/String;

.field private userListItemListener:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

.field private usersIdPhotoURL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private writingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 147
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    .line 150
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mParkingShowStatus:I

    .line 191
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isUserApiInitSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 144
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isFirst:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 180
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 181
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->activityManager:Landroid/app/ActivityManager;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hasUserLogin:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isCO2High:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->needRelogin:Z

    .line 187
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->reLoginUserId:Ljava/lang/String;

    .line 189
    const/4 v2, 0x3

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileId:[I

    .line 190
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileName:[Ljava/lang/String;

    .line 192
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    .line 240
    iput v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    .line 242
    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    .line 420
    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->userListItemListener:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    .line 480
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    .line 572
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isFirstReady:Ljava/lang/Boolean;

    .line 575
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$5;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->loginCallBack:Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 683
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$6;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 720
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNZPReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->updateUserAccountName()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hasUserLogin:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->clearUsersPhotoURL()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->showUserChangePopupWindow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileId:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterToast;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->getUserHabit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/zeekr/sdk/user/impl/UserAPI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Lcom/zeekr/sdk/user/impl/UserAPI;)Lcom/zeekr/sdk/user/impl/UserAPI;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Lcom/zeekr/sdk/user/impl/UserAPI;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    return-object p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->checkSpeedAndGear()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->autoLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isUserApiInitSuccess:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 144
    sput-boolean p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isUserApiInitSuccess:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->refreshUserAccountName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initUserData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->needRelogin:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->needRelogin:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->reLoginUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isFirstReady:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isFirstReady:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBarComponent:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initZeerUserAPI()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Z

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->showDvrForVR(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/AccountExitDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountExitDialog:Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/app/systemHMI/SystemHMIManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isNewObject()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isCO2High:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isCO2High:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCalendarDialog:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mlowTemperatureSnowDialog:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isFirst:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isFirst:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSongModePopupWindow:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # Ljava/util/List;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    .param p1, "x1"    # I

    .line 144
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    return v0
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 2016
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2017
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2018
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2019
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    return-void

    .line 2022
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2023
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    .line 2024
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2025
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 2026
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarFragmentForPMA$nnAvCuOvA6bcjnzqDWkFP3rqTck;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarFragmentForPMA$nnAvCuOvA6bcjnzqDWkFP3rqTck;-><init>(Landroid/view/View;)V

    .line 2027
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2028
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 2034
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2035
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 2037
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2038
    return-void

    .line 2040
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2041
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    .line 2042
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 2043
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 2044
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2049
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2050
    return-void
.end method

.method private autoLogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 470
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 471
    return-void
.end method

.method private checkSpeedAndGear()Z
    .locals 4

    .line 2112
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentCarSpeed()I

    move-result v0

    .line 2113
    .local v0, "speed":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2114
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSpeedAndGear speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2117
    return v1

    .line 2119
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentCarGear()I

    move-result v2

    .line 2120
    .local v2, "gear":I
    if-eqz v2, :cond_2

    .line 2121
    return v1

    .line 2123
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private clearUsersPhotoURL()V
    .locals 7

    .line 401
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "clearUsersPhotoURL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 404
    .local v2, "isNeedRemove":Ljava/lang/Boolean;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .local v3, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 407
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zeekr/sdk/user/bean/AccountBean;

    .line 408
    .local v5, "historyUserInfo":Lcom/zeekr/sdk/user/bean/AccountBean;
    invoke-virtual {v5}, Lcom/zeekr/sdk/user/bean/AccountBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 410
    goto :goto_2

    .line 412
    .end local v5    # "historyUserInfo":Lcom/zeekr/sdk/user/bean/AccountBean;
    :cond_0
    goto :goto_1

    .line 413
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 416
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 417
    :cond_3
    return-void
.end method

.method private getUserHabit()V
    .locals 6

    .line 2140
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "getUserHabit come in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2142
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    invoke-virtual {v0}, Lcom/zeekr/sdk/user/impl/UserAPI;->getErgonomicsData()Lcom/zeekr/sdk/user/bean/ErgonomicsBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    invoke-virtual {v0}, Lcom/zeekr/sdk/user/impl/UserAPI;->getErgonomicsData()Lcom/zeekr/sdk/user/bean/ErgonomicsBean;

    move-result-object v0

    iget-object v0, v0, Lcom/zeekr/sdk/user/bean/ErgonomicsBean;->ergonomicsListBeans:Ljava/util/List;

    .line 2144
    .local v0, "beans":Ljava/util/List;, "Ljava/util/List<Lcom/zeekr/sdk/user/bean/ErgonomicsListBean;>;"
    if-eqz v0, :cond_1

    .line 2145
    nop

    .line 2145
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2146
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileId:[I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zeekr/sdk/user/bean/ErgonomicsListBean;

    iget v4, v4, Lcom/zeekr/sdk/user/bean/ErgonomicsListBean;->profileId:I

    aput v4, v3, v2

    .line 2147
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileName:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zeekr/sdk/user/bean/ErgonomicsListBean;

    iget-object v4, v4, Lcom/zeekr/sdk/user/bean/ErgonomicsListBean;->profileName:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 2148
    const-string v3, "StatusBarFragmentForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserHabit profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", profileName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2150
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2151
    return-void

    .line 2155
    .end local v0    # "beans":Ljava/util/List;, "Ljava/util/List<Lcom/zeekr/sdk/user/bean/ErgonomicsListBean;>;"
    :cond_1
    const-string v0, "StatusBarFragmentForPMA"

    const-string v3, "getUserHabit userHabit is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string/jumbo v0, "\u7528\u8f66\u4e60\u60ef1"

    const-string/jumbo v3, "\u7528\u8f66\u4e60\u60ef2"

    const-string/jumbo v4, "\u7528\u8f66\u4e60\u60ef3"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 2157
    .local v0, "defaultHabit":[Ljava/lang/String;
    nop

    .line 2157
    .restart local v2    # "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 2158
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileId:[I

    add-int/lit8 v4, v2, 0x1

    aput v4, v3, v2

    .line 2159
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileName:[Ljava/lang/String;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    .line 2160
    const-string v3, "StatusBarFragmentForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserHabit default profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", profileName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->profileName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2162
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2163
    return-void
.end method

.method private initUserData()V
    .locals 2

    .line 908
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "initUserData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    if-nez v0, :cond_0

    .line 910
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "initUserData mUserCenterPopupWindow == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void

    .line 913
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mData:Ljava/util/List;

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 917
    :cond_1
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "initUserData mZeekrUserAPI is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_0
    return-void
.end method

.method private initViewClick()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOnViewClickListener(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;)V

    .line 1871
    return-void
.end method

.method private initZeerUserAPI()V
    .locals 3

    .line 483
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "initZeerUserAPI  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/zeekr/sdk/user/impl/UserAPI;->get()Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    invoke-virtual {v0, v1, v2}, Lcom/zeekr/sdk/user/impl/UserAPI;->init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V

    .line 547
    return-void
.end method

.method private isNewObject()V
    .locals 4

    .line 1874
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    const v1, 0x7f1200d8

    if-nez v0, :cond_0

    .line 1875
    new-instance v0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    if-nez v0, :cond_1

    .line 1878
    new-instance v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    .line 1880
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    if-nez v0, :cond_2

    .line 1881
    new-instance v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    .line 1883
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    if-nez v0, :cond_3

    .line 1884
    new-instance v0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    .line 1886
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    if-nez v0, :cond_4

    .line 1887
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const v3, 0x7f12032e

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    .line 1889
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    if-nez v0, :cond_5

    .line 1890
    new-instance v0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    .line 1891
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    if-nez v0, :cond_6

    .line 1892
    new-instance v0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    .line 1894
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    if-nez v0, :cond_7

    .line 1895
    new-instance v0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    .line 1897
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    if-nez v0, :cond_8

    .line 1898
    new-instance v0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 1900
    :cond_8
    return-void
.end method

.method static synthetic lambda$animateHide$0(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 2027
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private lunchAppWithActivityName(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2065
    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2072
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2073
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lunchAppByActivityName,packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2076
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ecarx.membercenter"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2077
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ecarx.accountcenter.login.view.LoginActivity"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2078
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->startActivityOnStack(Landroid/content/Intent;I)I

    .line 2080
    :cond_2
    return-void

    .line 2066
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2067
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "lunchAppByActivityName,packageName == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_4
    return-void
.end method

.method private refreshUserAccountName(Ljava/lang/String;)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;

    .line 613
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshUserAccountName reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isUserApiInitSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isUserApiInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    if-nez v0, :cond_2

    .line 618
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "refreshUserAccountName mZeekrUserAPI == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_1
    return-void

    .line 624
    :cond_2
    const/4 v0, 0x0

    .line 625
    .local v0, "accountName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 626
    .local v1, "accountType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    invoke-virtual {v2}, Lcom/zeekr/sdk/user/impl/UserAPI;->hasLogin()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 627
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 628
    const-string v2, "StatusBarFragmentForPMA"

    const-string/jumbo v5, "refreshUserAccountName hasLogin "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hasUserLogin:Z

    .line 631
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mZeekrUserAPI:Lcom/zeekr/sdk/user/impl/UserAPI;

    invoke-virtual {v2}, Lcom/zeekr/sdk/user/impl/UserAPI;->getUserInfo()Lcom/zeekr/sdk/user/bean/UserInfoBean;

    move-result-object v2

    .line 632
    .local v2, "userInfo":Lcom/zeekr/sdk/user/bean/UserInfoBean;
    iget-object v0, v2, Lcom/zeekr/sdk/user/bean/UserInfoBean;->username:Ljava/lang/String;

    .line 633
    iget-object v5, v2, Lcom/zeekr/sdk/user/bean/UserInfoBean;->avatar:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    .line 634
    iget-object v5, v2, Lcom/zeekr/sdk/user/bean/UserInfoBean;->userId:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    .line 635
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 636
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 637
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->usersIdPhotoURL:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 639
    .local v5, "message":Landroid/os/Message;
    const/16 v6, 0xc

    iput v6, v5, Landroid/os/Message;->what:I

    .line 640
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 641
    iget v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    if-nez v6, :cond_5

    .line 642
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 644
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->writingCount:I

    mul-int/lit16 v7, v7, 0x1388

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 648
    .end local v5    # "message":Landroid/os/Message;
    :cond_6
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 649
    .restart local v5    # "message":Landroid/os/Message;
    iput v3, v5, Landroid/os/Message;->what:I

    .line 650
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 651
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    .end local v2    # "userInfo":Lcom/zeekr/sdk/user/bean/UserInfoBean;
    .end local v5    # "message":Landroid/os/Message;
    goto :goto_1

    .line 654
    :cond_7
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 655
    const-string v2, "StatusBarFragmentForPMA"

    const-string/jumbo v5, "refreshUserAccountName noLogin "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hasUserLogin:Z

    .line 658
    const/4 v0, 0x0

    .line 659
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountPhtotUrl:Ljava/lang/String;

    .line 660
    iput-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountType:Ljava/lang/String;

    .line 661
    iput-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountId:Ljava/lang/String;

    .line 663
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 664
    .restart local v5    # "message":Landroid/os/Message;
    iput v3, v5, Landroid/os/Message;->what:I

    .line 665
    iput v2, v5, Landroid/os/Message;->arg1:I

    .line 666
    const-string v2, ""

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 667
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    .end local v5    # "message":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountName:Ljava/lang/String;

    if-eq v2, v0, :cond_9

    .line 671
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountName:Ljava/lang/String;

    .line 674
    :cond_9
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 675
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshUserAccountName post updateUserAccountName reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mAccountName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hasUserLogin "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hasUserLogin:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 680
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 681
    return-void
.end method

.method private registerNzpStateBroadcast()V
    .locals 3

    .line 710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 711
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ecarx.intent.action.PILOT_SHOW_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v1, "OTA_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v1, "ACTION_USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    const-string v1, "com.yfve.topbar.dvr"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string/jumbo v1, "zeekr.intent.action.DVR_SOUND_RECORDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNZPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 718
    return-void
.end method

.method private showDvrForVR(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDvrCfg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "showDvrForVR mCarBodyStateManager.getDvrCfg() false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    return-void

    .line 2193
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isNewObject()V

    .line 2194
    if-eqz p1, :cond_9

    .line 2195
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2196
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getDvrPosition()I

    move-result v0

    .line 2197
    .local v0, "positionX":I
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDvrForVR positionX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isFullScreen()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setPositionX(IZ)V

    .line 2199
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 2200
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2201
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 2203
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2204
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 2206
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2207
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 2209
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2210
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 2212
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2213
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 2215
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2216
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 2218
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2219
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 2221
    .end local v0    # "positionX":I
    :cond_7
    goto :goto_0

    .line 2222
    :cond_8
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "showDvrForVR is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->flashDismissTime()V

    .line 2226
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDvrOnOffForVR(Z)V

    .line 2227
    return-void
.end method

.method private showUserChangePopupWindow()V
    .locals 1

    .line 2166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isNewObject()V

    .line 2167
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->setDialogShow()V

    .line 2168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 2174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2175
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 2177
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 2180
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 2183
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2184
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 2186
    :cond_5
    return-void
.end method

.method private startActivityOnStack(Landroid/content/Intent;I)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stackId"    # I

    .line 2083
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 2085
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 2086
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method private startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 2090
    const/16 v0, -0x60

    .line 2092
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    .line 2093
    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    .line 2095
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x14000000

    const/4 v10, 0x0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2102
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 2092
    move-object v4, p1

    move-object v11, p2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2107
    goto :goto_0

    .line 2103
    :catch_0
    move-exception v1

    .line 2104
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2105
    const-string v2, "StatusBarFragmentForPMA"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2108
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method private updateUserAccountName()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mTvUserAccount:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUserAccountName mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const v1, 0x7f110429

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mTvUserAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 562
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUserAccountName mContext == null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBarForPMA:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->getStatusBarConext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBarForPMA:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->getStatusBarConext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mTvUserAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBarForPMA:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->getStatusBarConext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mTvUserAccount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 1
    .param p1, "state"    # I

    .line 1975
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v0, :cond_1

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1980
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 1983
    :cond_1
    return p1
.end method

.method public disable(IIZ)V
    .locals 4
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->adjustDisableFlags(I)I

    move-result p1

    .line 1950
    iget v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDisabled1:I

    .line 1951
    .local v0, "old1":I
    xor-int v1, p1, v0

    .line 1952
    .local v1, "diff1":I
    iput p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDisabled1:I

    .line 1953
    const/high16 v2, 0x100000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    .line 1954
    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 1955
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hideSystemIconArea(Z)V

    goto :goto_0

    .line 1957
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->showSystemIconArea(Z)V

    .line 1960
    :cond_1
    :goto_0
    const/high16 v2, 0x20000

    and-int v3, v1, v2

    if-eqz v3, :cond_3

    .line 1961
    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    .line 1962
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->hideNotificationIconArea(Z)V

    goto :goto_1

    .line 1964
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->showNotificationIconArea(Z)V

    .line 1967
    :cond_3
    :goto_1
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->animateHide(Landroid/view/View;Z)V

    .line 2006
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->animateHide(Landroid/view/View;Z)V

    .line 1998
    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 3
    .param p1, "notificationIconAreaController"    # Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 1935
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const v1, 0x7f0a037e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1936
    .local v0, "notificationIconArea":Landroid/view/ViewGroup;
    nop

    .line 1937
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    .line 1938
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    .line 1940
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1942
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1944
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->showNotificationIconArea(Z)V

    .line 1945
    return-void
.end method

.method public onCarGearChange(I)V
    .locals 3
    .param p1, "gear"    # I

    .line 2246
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2247
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarGearChange gear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2250
    if-eqz p1, :cond_1

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 2252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    if-eqz v0, :cond_1

    .line 2253
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setDialogShow()V

    .line 2257
    :cond_1
    return-void
.end method

.method public onCarSpeedChange(I)V
    .locals 3
    .param p1, "speed"    # I

    .line 2231
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2232
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarSpeedChange speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2235
    if-eqz p1, :cond_1

    .line 2236
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 2237
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    if-eqz v0, :cond_1

    .line 2238
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setDialogShow()V

    .line 2242
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 694
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    .line 696
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 697
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBarComponent:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "systemhmi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->activityManager:Landroid/app/ActivityManager;

    .line 702
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->registerNzpStateBroadcast()V

    .line 704
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initZeerUserAPI()V

    .line 705
    new-instance v0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSignalClusterViewForPMA:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 707
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 770
    const v0, 0x7f0d013e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 1924
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1927
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 1931
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1917
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1918
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 1920
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1910
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1911
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 1913
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1904
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1906
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 775
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 776
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 777
    if-eqz p2, :cond_0

    const-string v0, "panel_state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const v1, 0x7f0a0460

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const v1, 0x7f0a04e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mTvUserAccount:Landroid/widget/TextView;

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->updateUserAccountName()V

    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->showSystemIconArea(Z)V

    .line 790
    new-instance v0, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const v2, 0x7f1200d8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mDvrPopupWindow:Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->create()V

    .line 792
    new-instance v0, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25PopupWindow:Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->create()V

    .line 794
    new-instance v0, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPm25HighPopupWindow:Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->create()V

    .line 796
    new-instance v0, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mChargePopupWindow:Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->create()V

    .line 798
    new-instance v0, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mRestModePopupWindow:Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->create()V

    .line 800
    new-instance v0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->create()V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mWirelessChargingPopupWindow:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$8;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 813
    new-instance v0, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUsbPopupWindow:Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->create()V

    .line 815
    new-instance v0, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mlowTemperatureSnowDialog:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mlowTemperatureSnowDialog:Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->create()V

    .line 817
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    const v3, 0x7f12032e

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserChangePopupWindow:Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->create()V

    .line 819
    new-instance v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CalendarDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCalendarDialog:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCalendarDialog:Lcom/android/systemui/statusbar/pma/CalendarDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->create()V

    .line 821
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$9;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setUserOnClickLister(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$UserOnClickLister;)V

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->create()V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterPopupWindow:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->userListItemListener:Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setUserListItemClickListener(Lcom/android/systemui/statusbar/pma/UserInfoAdapter$OnItemClickListener;)V

    .line 873
    new-instance v0, Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountExitDialog:Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    .line 874
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountExitDialog:Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->create()V

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mAccountExitDialog:Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->setExitDialogClickLister(Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;)V

    .line 895
    new-instance v0, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSceneModePopupWindow:Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->create()V

    .line 897
    new-instance v0, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSongModePopupWindow:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSongModePopupWindow:Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->create()V

    .line 899
    new-instance v0, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSentryModePopupWindow:Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->create()V

    .line 901
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserCenterToast;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->create()V

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPM25HighConfig()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->isCO2High:Z

    .line 904
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initViewClick()V

    .line 905
    return-void
.end method

.method public openProfilePage()V
    .locals 2

    .line 2053
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2054
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "openProfilePage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "ecarx.membercenter"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2057
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 2058
    const-string v1, "ecarx.membercenter"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->lunchAppWithActivityName(Ljava/lang/String;)V

    .line 2059
    return-void

    .line 2061
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2062
    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 2009
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->animateShow(Landroid/view/View;Z)V

    .line 2010
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 2001
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->animateShow(Landroid/view/View;Z)V

    .line 2002
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "photoFileName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 364
    .local v1, "isNeedSave":Ljava/lang/Boolean;
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userPhoto/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 369
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 370
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 371
    .local v4, "fileList":Lorg/json/JSONArray;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 372
    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    move-object v7, v1

    move v1, v6

    .line 372
    .end local v1    # "isNeedSave":Ljava/lang/Boolean;
    .local v7, "isNeedSave":Ljava/lang/Boolean;
    :goto_0
    if-ge v1, v5, :cond_2

    :try_start_1
    aget-object v8, v3, v1

    .line 373
    .local v8, "photo":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 374
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, "fileName":Ljava/lang/String;
    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 376
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v7, v10

    .line 378
    .end local v9    # "fileName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 372
    .end local v8    # "photo":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fileList":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    .line 382
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v4    # "fileList":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    array-length v1, v3

    :goto_2
    if-ge v6, v1, :cond_3

    aget-object v5, v3, v6

    .line 384
    .local v5, "photo":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    .end local v5    # "photo":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 389
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fileList":Lorg/json/JSONArray;
    :cond_3
    move-object v1, v7

    .line 389
    .end local v7    # "isNeedSave":Ljava/lang/Boolean;
    .restart local v1    # "isNeedSave":Ljava/lang/Boolean;
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 390
    if-nez v0, :cond_5

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 393
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, v0}, Lcom/android/systemui/statusbar/pma/UtilForPMA;->writePhotoForUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 397
    .end local v2    # "file":Ljava/io/File;
    :cond_6
    goto :goto_4

    .line 395
    :catch_1
    move-exception v2

    .line 396
    .local v2, "error":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .end local v2    # "error":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
