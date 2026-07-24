.class public Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "StatusBarForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# static fields
.field private static final DEBUG:Z

.field private static mainHandler:Landroid/os/Handler;


# instance fields
.field private hmiGlobalCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

.field private hmiHardkeyCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

.field private hmiParkingCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

.field private isFirst:Z

.field isNeedInitDock:Z

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private mApiReadyCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mDisposable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mGlobalSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field protected mHandler:Landroid/os/Handler;

.field private mHardkeySystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

.field private mNavigationBarController:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

.field private mNavigationBarListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

.field private mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private mNavigationBarWindow:Landroid/view/ViewGroup;

.field private mNotificationIconAreaControllerForPMA:Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

.field private mStatusBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;

.field private mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

.field private mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field private mWindow1Show:Z

.field private mWindow2Show:Z

.field private mWindow3Show:Z

.field private mWindow4Show:Z

.field private mWindow5Show:Z

.field private mWindow6Show:Z

.field private notificationView:Landroid/view/ViewGroup;

.field packageManager:Landroid/content/pm/PackageManager;

.field private packageReceiver:Landroid/content/BroadcastReceiver;

.field private topAppHidesStatusBar:Z

.field private view:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 122
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mAppList:Ljava/util/ArrayList;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->isFirst:Z

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->isNeedInitDock:Z

    .line 275
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mApiReadyCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

    .line 287
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->topAppHidesStatusBar:Z

    .line 304
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .line 355
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->packageReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$5;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hmiParkingCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

    .line 562
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hmiGlobalCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

    .line 651
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hmiHardkeyCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

    .line 1041
    new-instance v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$8;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 121
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->getLaunchActivityForPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->notificationView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Landroid/view/ViewTreeObserver$OnWindowShownListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/zeekr/sdk/base/ApiReadyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mApiReadyCallback:Lcom/zeekr/sdk/base/ApiReadyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarController:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->getHmiShowState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->handleShowToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p1, "x1"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->handleWindows(I)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .line 121
    sget-object v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p1, "x1"    # [B

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->handleSetDidUsbModeChange([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .param p1, "x1"    # [B

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->handleGetDidUsbModeChange([B)V

    return-void
.end method

.method private createDropView()V
    .locals 8

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    if-eqz v0, :cond_0

    .line 1097
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const v1, 0x7f0d010a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    if-nez v0, :cond_1

    .line 1106
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1107
    const-string v0, "StatusBarForPMA"

    const-string v1, "PMAStatusBar failed inflate for R.layout.pma_drop_down_box"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7f4

    const v6, 0x840768

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1123
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "DropDownBoxView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1124
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1125
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1126
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1127
    const/16 v1, 0x780

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1128
    const/16 v1, 0x4b0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1129
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    return-void
.end method

.method private getHmiShowState()V
    .locals 5

    .line 471
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 472
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Global"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string v1, "id"

    const-string v2, "CSD_FULLSCREEN_CHARGING_STATUS_REBOOT_GET"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 475
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 477
    const-string v2, "StatusBarForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set Global partnums json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mGlobalSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 481
    const-string v2, "StatusBarForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set Global partnum success json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 485
    const-string v2, "StatusBarForPMA"

    const-string v3, " set Global partnum faile "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonPayload":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    goto :goto_1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 491
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private getLaunchActivityForPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .line 1643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v0, "intentToResolve":Landroid/content/Intent;
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1648
    .local v1, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1649
    :cond_0
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 1650
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1654
    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 1658
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v2, "newAPPActivies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1660
    .local v4, "r":Landroid/content/pm/ResolveInfo;
    new-instance v11, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    .end local v4    # "r":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 1663
    :cond_3
    return-object v2

    .line 1655
    .end local v2    # "newAPPActivies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    :cond_4
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleGetDidUsbModeChange([B)V
    .locals 4
    .param p1, "event"    # [B

    .line 797
    const-string v0, "StatusBarForPMA"

    const-string v1, "handleGetDidUsbModeChange: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string v1, "handleGetDidUsbModeChange"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 799
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 800
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 802
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$-cq6-bdxOSEmcKXAnnQkPKSM9GU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$-cq6-bdxOSEmcKXAnnQkPKSM9GU;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 808
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$s-HrpCBHOQLfm2PZnArPuFLp-ak;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$s-HrpCBHOQLfm2PZnArPuFLp-ak;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$aAGMRZxfJXqYpC66jf6U9NktzDE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$aAGMRZxfJXqYpC66jf6U9NktzDE;

    .line 809
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string v2, "handleGetDidUsbModeChange"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    return-void
.end method

.method private handleSetDidUsbModeChange([B)V
    .locals 4
    .param p1, "event"    # [B

    .line 772
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDidUsbModeChange: event ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string v1, "handleSetDidUsbModeChange"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 774
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 777
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Tv-A44k9SfSSaXPOjBPJzjhSO-A;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 783
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$gYmuDuvQLhK685AGMJANvmZ-YfQ;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Qp5NbkYzOc79p8EG58FRfCg-OlQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$Qp5NbkYzOc79p8EG58FRfCg-OlQ;

    .line 784
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string v2, "handleSetDidUsbModeChange"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    return-void
.end method

.method private handleShowToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 447
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleWindows(I)V
    .locals 5
    .param p1, "which"    # I

    .line 818
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 819
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWindows : which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    const/16 v0, 0x4b0

    const/16 v1, 0x780

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 972
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 973
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWindows: default id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 966
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-eqz v0, :cond_7

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 968
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    goto/16 :goto_6

    .line 948
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x49a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x5a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 951
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2c6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    return-void

    .line 955
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-nez v0, :cond_7

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 961
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto/16 :goto_6

    .line 941
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-eqz v0, :cond_7

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 943
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    goto/16 :goto_6

    .line 923
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x14a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x12c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    return-void

    .line 930
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-nez v0, :cond_7

    .line 932
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 934
    :catch_1
    move-exception v0

    .line 935
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 936
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    goto/16 :goto_6

    .line 916
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-eqz v0, :cond_7

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 918
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    goto/16 :goto_6

    .line 898
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x40

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3f8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    return-void

    .line 905
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-nez v0, :cond_7

    .line 907
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 909
    :catch_2
    move-exception v0

    .line 910
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 911
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    goto/16 :goto_6

    .line 892
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-eqz v0, :cond_7

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 894
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    goto/16 :goto_6

    .line 876
    :pswitch_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 877
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 878
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 879
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 881
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-nez v0, :cond_7

    .line 883
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 885
    :catch_3
    move-exception v0

    .line 886
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 887
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    goto/16 :goto_6

    .line 870
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-eqz v0, :cond_7

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 872
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    goto/16 :goto_6

    .line 852
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x288

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3c4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_5

    return-void

    .line 859
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-nez v0, :cond_7

    .line 861
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 863
    :catch_4
    move-exception v0

    .line 864
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 865
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    goto :goto_6

    .line 846
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-eqz v0, :cond_7

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 848
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    goto :goto_6

    .line 829
    :pswitch_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 830
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 831
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 832
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    return-void

    .line 835
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow2Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow3Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow4Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow5Show:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow6Show:Z

    if-nez v0, :cond_7

    .line 837
    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindow1Show:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 839
    :catch_5
    move-exception v0

    .line 840
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 841
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_5
    nop

    .line 977
    :cond_7
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private initGlobalListener()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "systemhmi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mGlobalSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mGlobalSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hmiGlobalCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    move-result v0

    .line 330
    .local v0, "isCallback":Z
    if-eqz v0, :cond_0

    .line 331
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "StatusBarForPMA"

    const-string/jumbo v2, "regist Global systemHMI callback success "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 336
    const-string v1, "StatusBarForPMA"

    const-string/jumbo v2, "regist Global systemHMI callback failed "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    :goto_0
    return-void
.end method

.method private initHardkeyListener()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "systemhmi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHardkeySystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHardkeySystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hmiHardkeyCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    move-result v0

    .line 344
    .local v0, "isCallback":Z
    if-eqz v0, :cond_0

    .line 345
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 346
    const-string v1, "StatusBarForPMA"

    const-string/jumbo v2, "regist Hardkey systemHMI callback success "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 350
    const-string v1, "StatusBarForPMA"

    const-string/jumbo v2, "regist Hardkey systemHMI callback failed "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    :goto_0
    return-void
.end method

.method private initParkingListener()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "systemhmi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->hmiParkingCallback:Landroid/app/systemHMI/ISystemHMICallback$Stub;

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    move-result v0

    .line 316
    .local v0, "isCallback":Z
    if-eqz v0, :cond_0

    .line 317
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 318
    const-string v1, "StatusBarForPMA"

    const-string/jumbo v2, "regist Parking systemHMI callback success "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 322
    const-string v1, "StatusBarForPMA"

    const-string/jumbo v2, "regist Parking systemHMI callback failed "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    :goto_0
    return-void
.end method

.method private initWindow()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->view:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->windowManager:Landroid/view/WindowManager;

    .line 496
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1100728

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->lp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 508
    return-void
.end method

.method public static synthetic lambda$handleGetDidUsbModeChange$10(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[BLio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "event"    # [B
    .param p2, "completableEmitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 803
    const-string v0, "persist.did.usbmode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 804
    .local v0, "usbmode":I
    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, p1, v1

    .line 805
    int-to-byte v1, v0

    const/16 v2, 0x9

    aput-byte v1, p1, v2

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendGetDidUsbModeComplete([B)V

    .line 807
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 808
    return-void
.end method

.method static synthetic lambda$handleGetDidUsbModeChange$11()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 810
    const-string v0, "StatusBarForPMA"

    const-string v1, "handleGetDidUsbModeChange Success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method static synthetic lambda$handleGetDidUsbModeChange$12(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 812
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetDidUsbModeChange Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void
.end method

.method public static synthetic lambda$handleSetDidUsbModeChange$7(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[BLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "event"    # [B
    .param p2, "completableEmitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 778
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDidUsbModeChange: usbmode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v0, "persist.did.usbmode"

    aget-byte v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    aget-byte v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->showDebugMode(I)V

    .line 782
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 783
    return-void
.end method

.method public static synthetic lambda$handleSetDidUsbModeChange$8(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V
    .locals 2
    .param p1, "event"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 785
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendSetDidUsbModeComplete([B)V

    .line 786
    const-string v0, "StatusBarForPMA"

    const-string v1, "handleSetDidUsbModeChange Success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method static synthetic lambda$handleSetDidUsbModeChange$9(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 788
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDidUsbModeChange Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$13(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 999
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 1000
    .local v0, "statusBarFragmentForPMA":Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNotificationIconAreaControllerForPMA:Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1001
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBar(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    .line 1003
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1004
    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;

    .line 1005
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarCarBodyDisplayController;->setView(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    .line 1006
    return-void
.end method

.method public static synthetic lambda$sendGetDidUsbModeComplete$4(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[BLio/reactivex/CompletableEmitter;)V
    .locals 6
    .param p1, "event"    # [B
    .param p2, "completableEmitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 750
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 752
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 753
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "domain"

    const-string v3, "Global"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v2, "id"

    const-string v3, "SystemHMI"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 756
    .local v2, "jsonPayload":Lorg/json/JSONObject;
    const-string/jumbo v3, "systemhmi_resp_value"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v3, "payload"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mGlobalSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    .line 759
    const-string v3, "StatusBarForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendGetDidUsbModeComplete: value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonPayload":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 762
    return-void
.end method

.method static synthetic lambda$sendGetDidUsbModeComplete$5()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 764
    const-string v0, "StatusBarForPMA"

    const-string/jumbo v1, "sendGetDidUsbModeComplete Success! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-void
.end method

.method static synthetic lambda$sendGetDidUsbModeComplete$6(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 766
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendGetDidUsbModeComplete Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void
.end method

.method public static synthetic lambda$sendSetDidUsbModeComplete$1(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[BLio/reactivex/CompletableEmitter;)V
    .locals 6
    .param p1, "event"    # [B
    .param p2, "completableEmitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 720
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 721
    const/4 v0, 0x0

    const/4 v1, 0x6

    aput-byte v1, p1, v0

    .line 723
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 724
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 725
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "domain"

    const-string v3, "Global"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v2, "id"

    const-string v3, "SystemHMI"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 728
    .local v2, "jsonPayload":Lorg/json/JSONObject;
    const-string/jumbo v3, "systemhmi_resp_value"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v3, "payload"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v3, "StatusBarForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSetDidUsbModeComplete: value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mGlobalSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    .line 733
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonPayload":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 734
    return-void
.end method

.method static synthetic lambda$sendSetDidUsbModeComplete$2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 736
    const-string v0, "StatusBarForPMA"

    const-string/jumbo v1, "sendSetDidUsbModeComplete Success! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method static synthetic lambda$sendSetDidUsbModeComplete$3(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 738
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSetDidUsbModeComplete Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public static synthetic lambda$start$0(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 265
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZKMarketManager result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 267
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 268
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    return-void
.end method

.method private showSystemToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 453
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showToast str "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->showSystemToast(Ljava/lang/String;)V

    .line 459
    :cond_1
    return-void
.end method

.method private startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1403
    const/16 v0, -0x60

    .line 1405
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    .line 1406
    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    .line 1408
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

    .line 1415
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 1405
    move-object v4, p1

    move-object v11, p2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1420
    goto :goto_0

    .line 1416
    :catch_0
    move-exception v1

    .line 1417
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1418
    const-string v2, "StatusBarForPMA"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1421
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public addNotificationCenterUI()V
    .locals 5

    .line 1026
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "StatusBarForPMA"

    const-string v1, "addNotificationCenterUI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->notificationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->addNotificationUI(Landroid/view/ViewGroup;)Z

    move-result v0

    .line 1030
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->notificationView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1034
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1035
    const-string v1, "StatusBarForPMA"

    const-string v2, "NotificationControlCenter== addView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_2
    :goto_0
    return-void
.end method

.method public addRecent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->addRecent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z
    .param p4, "speedUpFactor"    # F

    .line 1210
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->collapsePanel(ZZF)V

    .line 1216
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeAllHeadsUpEntries()V

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->expand(Z)V

    .line 1327
    :cond_0
    return-void
.end method

.method public closeAllSlider(Z)V
    .locals 1
    .param p1, "isVolum"    # Z

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSlider(Z)V

    .line 1567
    return-void
.end method

.method public closeAppListSlider()V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppListSlider()V

    .line 1511
    return-void
.end method

.method public closeClimateSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeClimateSlider(Z)V

    .line 1535
    return-void
.end method

.method public closeDriverHeatSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverHeatSlider(Z)V

    .line 1523
    return-void
.end method

.method public closeDriverTempSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeDriverTempSlider(Z)V

    .line 1515
    return-void
.end method

.method public closeDropDownBoxView()V
    .locals 2

    .line 1581
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->closeSelf()V

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->dismissUserCenterPopupWindow()V

    goto :goto_0

    .line 1585
    :cond_0
    const-string v0, "StatusBarForPMA"

    const-string v1, "mStatusBarViewForPMA is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :goto_0
    return-void
.end method

.method public closePassengerHeatSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerHeatSlider(Z)V

    .line 1527
    return-void
.end method

.method public closePassengerTempSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closePassengerTempSlider(Z)V

    .line 1519
    return-void
.end method

.method public closeVolumeSlider(Z)V
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeVolumeSlider(Z)V

    .line 1531
    return-void
.end method

.method protected createNavigationBar()V
    .locals 9

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-eqz v0, :cond_0

    .line 1136
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00df

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarWindow:Landroid/view/ViewGroup;

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarWindow:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1145
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1146
    const-string v0, "StatusBarForPMA"

    const-string v1, "PMAStatusBar failed inflate for R.layout.navigation_bar_window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0128

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-nez v0, :cond_2

    .line 1152
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1153
    const-string v0, "StatusBarForPMA"

    const-string v2, "PMAStatusBar failed inflate for R.layout.pma_navigation_bar"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {v0, v2, v3, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarController:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarController:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->initSliderAppClick()V

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAlwaysOpaque(Z)V

    .line 1159
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;->setView(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    .line 1161
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x7e3

    const v7, 0x840068

    const/4 v8, -0x3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1170
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "NavigationBarForPMA"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1171
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1172
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarCarBodyDisplayController:Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setNavigationBarCarBodyDisplayController(Lcom/android/systemui/statusbar/pma/NavigationBarCarBodyDisplayController;)V

    .line 1175
    return-void
.end method

.method protected createUserSwitcher()V
    .locals 0

    .line 1280
    return-void
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    return-object v0
.end method

.method public getStatusBarConext()Landroid/content/Context;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected hideSoftInput(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1591
    return-void
.end method

.method public isCollapsing()Z
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isSliderShow(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSliderShow(I)Z

    move-result v0

    return v0
.end method

.method public isTopActivityExterior(Z)V
    .locals 1
    .param p1, "istopactivity"    # Z

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isTopActivityExterior(Z)V

    .line 1571
    return-void
.end method

.method protected makeExpandedInvisible()V
    .locals 0

    .line 1205
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    .line 1206
    return-void
.end method

.method protected makeExpandedInvisibleForAdaptPMA()V
    .locals 3

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->collapsePanel(ZZF)V

    .line 1221
    return-void
.end method

.method protected makeExpandedVisible(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 1199
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 1201
    return-void
.end method

.method protected makeStatusBarView()V
    .locals 5

    .line 985
    const-class v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 986
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->createNavigationBar()V

    .line 987
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0d0122

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 991
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->createDropView()V

    .line 992
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 996
    new-instance v1, Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNotificationIconAreaControllerForPMA:Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

    .line 997
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$2YcpEIW0Oinunhz7UP5lyQUv3rY;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$2YcpEIW0Oinunhz7UP5lyQUv3rY;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    .line 998
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    .line 1006
    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1007
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;-><init>()V

    const-string v3, "StatusBarFragmentForPMA"

    .line 1008
    const v4, 0x7f0a0381

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1009
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1010
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 1014
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const v4, 0x7f0d0092

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->notificationView:Landroid/view/ViewGroup;

    .line 1015
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->addNotificationCenterUI()V

    .line 1019
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEnabled(Z)V

    .line 1021
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 1023
    :cond_0
    return-void
.end method

.method public moveClimatePosition(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveClimatePosition(I)V

    .line 1563
    return-void
.end method

.method public moveDriverHeatPosition(I)I
    .locals 1
    .param p1, "direction"    # I

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveDriverHeatPosition(I)I

    move-result v0

    return v0
.end method

.method public moveDriverTempPosition(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveDriverTempPosition(I)V

    .line 1543
    return-void
.end method

.method public movePassengerHeatPosition(I)I
    .locals 1
    .param p1, "direction"    # I

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->movePassengerHeatPosition(I)I

    move-result v0

    return v0
.end method

.method public movePassengerTempPosition(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 1546
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->movePassengerTempPosition(I)V

    .line 1547
    return-void
.end method

.method public moveVolumeUiPosition(I)I
    .locals 1
    .param p1, "direction"    # I

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveVolumeUiPosition(I)I

    move-result v0

    return v0
.end method

.method public muteVolume()V
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->requestMuteVolume()V

    .line 1495
    return-void
.end method

.method protected notifyUiVisibilityChanged(I)V
    .locals 0
    .param p1, "vis"    # I

    .line 1183
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    .line 1185
    return-void
.end method

.method public onConnected()V
    .locals 3

    .line 1351
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1352
    const-string v0, "StatusBarForPMA"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateShift(ZI)V

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAdjustableTemp(ZI)V

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverHeatOrVentilationShift(ZII)V

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverTemp(ZF)V

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOutsideTempUnit(ZI)V

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerHeatOrVentilationShift(ZII)V

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerTemp(ZF)V

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateTempSyncState(ZZ)V

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateECOStatu(ZZ)V

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAcPowerChange(ZZ)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePlugStateAC(ZI)V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePlugStateDC(ZI)V

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryStateAC(ZI)V

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryStateDC(ZI)V

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryIconColor(ZI)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryFailure(ZI)V

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePDCStatusInternal(ZZ)V

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateParkComfortModeView()V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDvrState(ZI)V

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateEstimatedTime(ZF)V

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryLevel(ZF)V

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeACCap(ZI)V

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeDCCap(ZI)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeDCCapAvail(ZI)V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeACCapAvail(ZI)V

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateV2LStatus(ZI)V

    .line 1384
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1389
    return-void
.end method

.method public onHMIOccVolumeChange(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setOccLevel(I)V

    .line 1635
    return-void
.end method

.method public onHMIVolumeChange(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setMusicLevel(I)V

    .line 1631
    return-void
.end method

.method public onScreenOn()V
    .locals 5

    .line 1619
    const-string v0, "StatusBarForPMA"

    const-string v1, "onScreenOn: entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1622
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "audio_exterior_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1623
    .local v1, "value":I
    const-string v2, "StatusBarForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenOn: isSettingsExterior "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isSettingsExterior(I)V

    .line 1626
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "value":I
    :cond_0
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 1284
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUserSwitched(I)V

    .line 1290
    return-void
.end method

.method public openApplist(Z)V
    .locals 1
    .param p1, "closeClimate"    # Z

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->openApplist(Z)V

    .line 1436
    return-void
.end method

.method public openClimateWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1474
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1476
    return-void
.end method

.method public openDriverHeatVentilationWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1464
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1466
    return-void
.end method

.method public openDriverTempWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1481
    return-void
.end method

.method public openMediaSliderWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1489
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1491
    return-void
.end method

.method public openNotification()V
    .locals 2

    .line 1638
    const-string v0, "StatusBarForPMA"

    const-string v1, "openNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDropDownBoxView:Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxViewForPMA;->openNotification()V

    .line 1640
    return-void
.end method

.method public openPassengerHeatVentilationWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1471
    return-void
.end method

.method public openPassengerTempWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1486
    return-void
.end method

.method public openVolumeSliderWindow(F)V
    .locals 2
    .param p1, "x"    # F

    .line 1459
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 1461
    return-void
.end method

.method public removeAppList(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->removeAppList(Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method public removeNewApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->removeNewApp(Ljava/lang/String;)V

    .line 1444
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->removeTask(Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method public sendBroadcastToBTPhone()V
    .locals 2

    .line 1594
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1595
    const-string v0, "StatusBarForPMA"

    const-string/jumbo v1, "sendBroadcastToBTPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sendto.btphone.dismissWindow"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1598
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1599
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1600
    return-void
.end method

.method public sendBroadcastToVRApp(I)V
    .locals 3
    .param p1, "action"    # I

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1604
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1605
    const-string v0, "StatusBarForPMA"

    const-string/jumbo v1, "sendBroadcastToVRApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ecarx.intent.action.ECARX_KEY_RVOICEASSIST_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    const-string v1, "ecarx.extra.ECARX_KEY_EVENT_TYPE"

    const v2, 0x30e27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1610
    const-string v1, "ecarx.extra.ECARX_KEY_ACTION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1611
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1612
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1613
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1614
    :cond_2
    const-string v0, "StatusBarForPMA"

    const-string v1, "mContext  is null in sendBroadcastToVRApp."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :goto_0
    return-void
.end method

.method public sendGetDidUsbModeComplete([B)V
    .locals 4
    .param p1, "event"    # [B

    .line 744
    const-string v0, "StatusBarForPMA"

    const-string/jumbo v1, "sendGetDidUsbModeComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string/jumbo v1, "sendGetDidUsbModeComplete"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 746
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 747
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 749
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$kbLN_MdfKHcHDTvdvUrxHcHvjdg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$kbLN_MdfKHcHDTvdvUrxHcHvjdg;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 762
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$HUIIZtSukKcUoBPhcTVwBV4E1BM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$HUIIZtSukKcUoBPhcTVwBV4E1BM;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$GXxYvGIyH7R4Lb4s_PiFaCTdyDE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$GXxYvGIyH7R4Lb4s_PiFaCTdyDE;

    .line 763
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string/jumbo v2, "sendGetDidUsbModeComplete"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    return-void
.end method

.method public sendSetDidUsbModeComplete([B)V
    .locals 4
    .param p1, "event"    # [B

    .line 714
    const-string v0, "StatusBarForPMA"

    const-string/jumbo v1, "sendSetDidUsbModeComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string/jumbo v1, "sendSetDidUsbModeComplete"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 716
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 717
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 719
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$4tUTEuyJsa9cmptUmZybWCcu4bE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$4tUTEuyJsa9cmptUmZybWCcu4bE;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 734
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$ME7Go4mJkCfAUUlRZhgT9qsx2Ok;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$ME7Go4mJkCfAUUlRZhgT9qsx2Ok;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$jtt0bHPHcwJ1Cg7SmTHqJNIyRqc;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$jtt0bHPHcwJ1Cg7SmTHqJNIyRqc;

    .line 735
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    const-string/jumbo v2, "sendSetDidUsbModeComplete"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-void
.end method

.method public setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 1507
    return-void
.end method

.method public setSliderClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSliderClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;)V

    .line 1503
    return-void
.end method

.method public setSliderDayNightMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->onDayNightModeChange(I)V

    .line 1440
    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 3
    .param p1, "topAppHidesStatusBar"    # Z

    .line 291
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTopAppHidesStatusBar topAppHidesStatusBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setTopAppHidesStatusBar(Z)V

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->topAppHidesStatusBar:Z

    if-eq v0, p1, :cond_1

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->topAppHidesStatusBar:Z

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->changeBackgroundResource(IZ)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStatusBarViewForPMA:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->changeBackgroundResource(IZ)V

    .line 302
    :cond_1
    return-void
.end method

.method public setWindowState(II)V
    .locals 2
    .param p1, "window"    # I
    .param p2, "state"    # I

    .line 1668
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setWindowState(II)V

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->getStatusBarWindowState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setStatusBarWindowState(I)V

    .line 1670
    return-void
.end method

.method public shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 1311
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    .line 1312
    const/4 v0, 0x0

    return v0

    .line 1315
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 7

    .line 224
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 226
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 228
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setHMIMusicVolumeLister(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setHMIOccVolumeLister(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->connect()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->initParkingListener()V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->initGlobalListener()V

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->initHardkeyListener()V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->initWindow()V

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mDisposable:Ljava/util/HashMap;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "action.systemhmi.dbus.ready.read"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.action.VOLUME_FS_TYPE_UNSUPPORTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "zeekr.intent.action.MUTE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "audio.exterior.action.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "zeekr.intent.action.DVR_SOUND_RECORDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->packageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->packageManager:Landroid/content/pm/PackageManager;

    .line 262
    invoke-static {}, Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;->get()Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    const-string v4, "SystemUI"

    const-string v5, "laucherApp"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;->config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    invoke-static {}, Lcom/zeekrlife/market/update/ZKMarketManager;->getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$bDvkg4g6VgOjIWI93t-mz10MD7Y;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$StatusBarForPMA$bDvkg4g6VgOjIWI93t-mz10MD7Y;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    invoke-virtual {v2, v3, v4}, Lcom/zeekrlife/market/update/ZKMarketManager;->init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "STATUS_BAR_VISIBLE_STATE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1400
    return-void
.end method

.method public startActivityOnStack(Landroid/content/Intent;I)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stackId"    # I

    .line 1392
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1394
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 1395
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public updateKeyguardState(ZZ)V
    .locals 0
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .line 1294
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 1304
    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0
    .param p1, "metaDataChanged"    # Z
    .param p2, "allowEnterAnimation"    # Z

    .line 1265
    return-void
.end method

.method public updateNotificationViews()V
    .locals 3

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    .line 1248
    return-void

    .line 1250
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationViews()V

    .line 1254
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1255
    const-string v0, "StatusBarForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationIconAreaControllerForPMA == null :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNotificationIconAreaControllerForPMA:Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNotificationIconAreaControllerForPMA:Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

    if-eqz v0, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mNotificationIconAreaControllerForPMA:Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/NotificationIconAreaControllerForPMA;->updateStatusBarNotificationIcons()V

    .line 1260
    :cond_3
    return-void
.end method
