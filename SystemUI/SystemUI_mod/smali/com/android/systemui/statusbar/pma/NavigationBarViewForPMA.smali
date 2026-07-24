.class public Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "NavigationBarViewForPMA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;
    }
.end annotation


# static fields
.field private static final APPLIST_COMPONENTNAME:Landroid/content/ComponentName;

.field private static final CARSETTING_COMPONENTNAME:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final MEDIA_COMPONENTNAME:Landroid/content/ComponentName;

.field private static final NAVIGATION_COMPONENTNAME:Landroid/content/ComponentName;

.field public static mIsOut:Z

.field private static mTopActivityInfo:Landroid/content/ComponentName;

.field private static final textColorDay:I

.field private static final textColorNight:I


# instance fields
.field private final DOUBLE_TAP_TIMEOUT:I

.field private H:Landroid/os/Handler;

.field private final NOT_CHANGED:I

.field private OPEN_CLIMATE_FILTER:Ljava/lang/String;

.field private connection:Landroid/content/ServiceConnection;

.field private dockBackground:Landroid/widget/LinearLayout;

.field private frame360:Landroid/widget/FrameLayout;

.field private frameApplist:Landroid/widget/FrameLayout;

.field private frameDriverHeatVentilation:Landroid/widget/FrameLayout;

.field private frameHome:Landroid/widget/FrameLayout;

.field private frameMedia:Landroid/widget/FrameLayout;

.field private frameOpenClimate:Landroid/widget/FrameLayout;

.field private frameOpenClimateLayout:Landroid/widget/FrameLayout;

.field private framePassengerHeatVentilation:Landroid/widget/FrameLayout;

.field private frameSetting:Landroid/widget/FrameLayout;

.field private frameVolume:Landroid/widget/FrameLayout;

.field private ghandler:Landroid/os/Handler;

.field private iEvaService:Lcom/zeekr/eva/service/IEvaService;

.field private imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

.field private imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

.field private imgClimateEcoAuto:Landroid/widget/ImageView;

.field private imgClimateShift:Landroid/widget/ImageView;

.field private imgDriverHeatVentilation:Landroid/widget/ImageView;

.field private imgDriverHeatVentilationClickable:I

.field private imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

.field private imgDriverTempRightArrow:Landroid/widget/FrameLayout;

.field private imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

.field private imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

.field private imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

.field private imgOpenMedia:Landroid/widget/ImageView;

.field private imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

.field private imgPassengerHeatVentilation:Landroid/widget/ImageView;

.field private imgPassengerHeatVentilationClickable:I

.field private imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

.field private imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

.field private isClimateClickable:Z

.field private isDriverTempMaxMin:I

.field private isPassengerTempMaxMin:I

.field private isScroll:Z

.field private isStrFirstSetting:Z

.field private isUserControl:Ljava/lang/Boolean;

.field private launcherTime:J

.field private final mActivityMonitor:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field public mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

.field public mIsMute:Z

.field public mLevel:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector;

.field private mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

.field private needCloseClimate:Z

.field private oneWorld:I

.field private preClassNmae:Ljava/lang/String;

.field private prePackageName:Ljava/lang/String;

.field private topActivityIsLauncher:Z

.field private topActivityIsOutsideVolume:Z

.field topAppX:F

.field private touchOnLongPressTime:J

.field private touchType:I

.field private touchUpTime:J

.field private tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

.field private tvDriverTempLayout:Landroid/widget/FrameLayout;

.field private tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

.field private tvPassengerTempLayout:Landroid/widget/FrameLayout;

.field private userDragFirstX:F

.field private userDragFirstY:F

.field private vis:Z

.field public volumeJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    .line 69
    const-string v0, "#383A3D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->textColorDay:I

    .line 70
    const-string v0, "#B4B9BE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->textColorNight:I

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsOut:Z

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mTopActivityInfo:Landroid/content/ComponentName;

    .line 141
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ecarx.launcher3"

    const-string v2, "ecarx.launcher3.AppPane"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->APPLIST_COMPONENTNAME:Landroid/content/ComponentName;

    .line 142
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.geely.pma.settings"

    const-string v2, "com.geely.pma.settings.SettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->CARSETTING_COMPONENTNAME:Landroid/content/ComponentName;

    .line 143
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->NAVIGATION_COMPONENTNAME:Landroid/content/ComponentName;

    .line 144
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.ecarx.multimedia"

    const-string v2, "com.ecarx.multimedia.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->MEDIA_COMPONENTNAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const-string v0, "com.jerry.pma.climate.openClimate"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->OPEN_CLIMATE_FILTER:Ljava/lang/String;

    .line 73
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->NOT_CHANGED:I

    .line 89
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DOUBLE_TAP_TIMEOUT:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->oneWorld:I

    .line 107
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    .line 108
    iput-wide v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->needCloseClimate:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topActivityIsLauncher:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topActivityIsOutsideVolume:Z

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isUserControl:Ljava/lang/Boolean;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topAppX:F

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->vis:Z

    .line 532
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mSimpleOnGestureListener:Landroid/view/GestureDetector;

    .line 787
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    .line 1370
    const-string v0, "dock_volume_night.json"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->volumeJson:Ljava/lang/String;

    .line 1417
    iput-wide v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->launcherTime:J

    .line 1589
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$6;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->connection:Landroid/content/ServiceConnection;

    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    .line 237
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 238
    new-instance v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mActivityMonitor:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mActivityMonitor:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->setTopActivityChangedListener(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;)V

    .line 240
    const-class v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isClimateClickable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setClimateOff()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    return v0
.end method

.method static synthetic access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .param p1, "x1"    # F

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    return v0
.end method

.method static synthetic access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .param p1, "x1"    # F

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .param p1, "x1"    # J

    .line 65
    iput-wide p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isDriverTempMaxMin:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Lcom/zeekr/eva/service/IEvaService;)Lcom/zeekr/eva/service/IEvaService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .param p1, "x1"    # Lcom/zeekr/eva/service/IEvaService;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isPassengerTempMaxMin:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topActivityIsOutsideVolume:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->OPEN_CLIMATE_FILTER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    return v0
.end method

.method private bindServiceInterface()V
    .locals 4

    .line 1602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1603
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zeekr.eva.aidl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const-string v1, "com.zeekr.eva"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1606
    return-void
.end method

.method private isLauncherHomeForeground(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 342
    const-string v0, "ecarx.launcher3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.zeekr.autopilot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.zeekr.automap"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.zeekr.carlauncher3d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 344
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$changeBackgroundResource$0(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 1

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$1(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 1

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$2(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 1

    .line 516
    const-string v0, "#FFF7F8F9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$changeBackgroundResource$3(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 1

    .line 518
    const-string v0, "#FF141518"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$setClimate$21(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "isZero"    # Ljava/lang/Boolean;

    .line 1254
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimateEcoAuto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setSyncButtonGrey(Z)V

    .line 1259
    return-void
.end method

.method public static synthetic lambda$setClimateClickable$7(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 2
    .param p1, "isClickable"    # Z

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1145
    if-eqz p1, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimate:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimate:Landroid/widget/FrameLayout;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1150
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setClimateEcoAuto$22(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimateEcoAuto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$setClimateShift$20(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "shift"    # I

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimateShift:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->updateClimateShift(I)V

    .line 1249
    return-void
.end method

.method public static synthetic lambda$setDriverHeatClickable$14(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameDriverHeatVentilation:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1222
    return-void
.end method

.method public static synthetic lambda$setDriverHeatVentilation$15(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilation:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$setDriverTempArrowVisible$25(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1338
    if-eqz p1, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1349
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDriverTempArrowaAlpha$23(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;I)V
    .locals 10
    .param p1, "position"    # I

    .line 1268
    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    .line 1269
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 1270
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1271
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1272
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1273
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1274
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1276
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1278
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1279
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1280
    :cond_0
    if-ne p1, v8, :cond_1

    .line 1281
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1282
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1283
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 1284
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1285
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1286
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1287
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1290
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1291
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1298
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDriverTempClickable$5(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1130
    return-void
.end method

.method public static synthetic lambda$setDriverTempNormalState$4(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)V
    .locals 2
    .param p1, "temp"    # F

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setNormalTempState(F)V

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1122
    return-void
.end method

.method public static synthetic lambda$setDriverTempOff$9(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "tempOff"    # Ljava/lang/Boolean;

    .line 1166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setAlpha(F)V

    goto :goto_0

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setAlpha(F)V

    .line 1171
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDriverTempStringState$8(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/String;)V
    .locals 2
    .param p1, "driverTemp"    # Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setTempState(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1162
    return-void
.end method

.method public static synthetic lambda$setDriverVisible$16(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilation:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setMuteState$27(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 2
    .param p1, "isMute"    # Z

    .line 1388
    if-eqz p1, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1399
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setPassengerHeatClickable$13(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->framePassengerHeatVentilation:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1211
    return-void
.end method

.method public static synthetic lambda$setPassengerHeatVentilation$18(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilation:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$setPassengerTempArrowAlpha$24(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;I)V
    .locals 10
    .param p1, "position"    # I

    .line 1303
    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    .line 1304
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 1305
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1306
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1307
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1308
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1309
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1310
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1313
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1315
    :cond_0
    if-ne p1, v8, :cond_1

    .line 1316
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1317
    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1318
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 1319
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1320
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1321
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1322
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1323
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1325
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1326
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1333
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setPassengerTempArrowVisible$26(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1354
    if-eqz p1, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1365
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setPassengerTempClickable$6(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1138
    return-void
.end method

.method public static synthetic lambda$setPassengerTempNormalState$11(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)V
    .locals 2
    .param p1, "temp"    # F

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setNormalTempState(F)V

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1191
    return-void
.end method

.method public static synthetic lambda$setPassengerTempOff$12(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "tempOff"    # Ljava/lang/Boolean;

    .line 1195
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setAlpha(F)V

    goto :goto_0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setAlpha(F)V

    .line 1200
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setPassengerTempStringState$10(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/String;)V
    .locals 2
    .param p1, "passengerTemp"    # Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setTempState(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1183
    return-void
.end method

.method public static synthetic lambda$setPassengerVisible$17(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilation:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private notifyEvaCurType(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1610
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    if-eqz v0, :cond_0

    .line 1611
    const-string v0, "NavigationBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEvaCurType type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    invoke-interface {v0, p1}, Lcom/zeekr/eva/service/IEvaService;->notifyCurActivity(I)V

    goto :goto_0

    .line 1614
    :cond_0
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "notifyEvaCurType iEvaService is null, bind service again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->bindServiceInterface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    :goto_0
    goto :goto_1

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1620
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setClimateOff()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setClimateShift(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setAcPowerState(Z)V

    .line 232
    :goto_0
    return-void
.end method


# virtual methods
.method public changeBackgroundResource(IZ)V
    .locals 6
    .param p1, "isday"    # I
    .param p2, "isVis"    # Z

    .line 503
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->vis:Z

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_stop_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 505
    .local v0, "launcherFlag":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 506
    const-string v1, "NavigationBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeBackgroundResource vis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->vis:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " topActivityIsLauncher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topActivityIsLauncher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " launcherFlag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->launcherTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 512
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$BnfnqaF1bqyKjp8NKTf88qjBojw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$BnfnqaF1bqyKjp8NKTf88qjBojw;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void

    .line 515
    :cond_2
    if-ne p1, v1, :cond_3

    .line 516
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$3QdsmGd8f843U7mnYXbUNE-Rbcg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$3QdsmGd8f843U7mnYXbUNE-Rbcg;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 518
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$Fjg2iwC5N93jQ3FElFYQLTdoRA8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$Fjg2iwC5N93jQ3FElFYQLTdoRA8;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 509
    :cond_4
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$FE8Ex3h0kokfaNaB6R-MzWpUwbo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$FE8Ex3h0kokfaNaB6R-MzWpUwbo;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 521
    :goto_1
    return-void
.end method

.method public changeDayNigtMode(I)V
    .locals 5
    .param p1, "value"    # I

    .line 459
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->vis:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->changeBackgroundResource(IZ)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Entertainment_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->oneWorld:I

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 462
    .local v0, "isSliderShow":Z
    :goto_0
    if-ne p1, v1, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->oneWorld:I

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_home_day.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_setting_day.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_applist_day.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_360_day.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenMedia:Landroid/widget/ImageView;

    const v3, 0x7f080600

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_climate_day.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    sget v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->textColorDay:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setTextColor(I)V

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    sget v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->textColorDay:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setTextColor(I)V

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0805fc

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0805fd

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_home_night.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_setting_night.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_applist_night.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_360_night.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenMedia:Landroid/widget/ImageView;

    const v3, 0x7f080601

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "dock_climate_night.json"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    sget v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->textColorNight:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setTextColor(I)V

    .line 489
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    sget v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->textColorNight:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setTextColor(I)V

    .line 490
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f080605

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f080606

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 497
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 499
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 500
    return-void
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 1098
    return-object p0
.end method

.method public getTopPackageName()Ljava/lang/String;
    .locals 1

    .line 244
    sget-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mTopActivityInfo:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "Unknow"

    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mTopActivityInfo:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLauncherHomeForeground()Z
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "ecarx.launcher3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.zeekr.autopilot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.zeekr.automap"

    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.zeekr.carlauncher3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 527
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0172

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 1451
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1452
    const-string v0, "NavigationBarViewForPMA"

    const-string v4, "openCarSettingApp"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1457
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.geely.pma.settings"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1460
    return-void

    .line 1462
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    .line 1464
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openCarSettingApp()V

    .line 1467
    goto/16 :goto_0

    .line 1469
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1470
    const-string v0, "NavigationBarViewForPMA"

    const-string v4, "openMediaApp"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_4
    const-string v0, "launcher_dock_multimedia_click"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    if-eqz v0, :cond_f

    .line 1474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "top":Ljava/lang/String;
    const-string v4, "com.zeekr.media.qq"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.netease.cloudmusic.iot"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.zeekr.media"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1476
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1478
    return-void

    .line 1480
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    .line 1482
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1483
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const v2, 0x446b8000    # 942.0f

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openMediaSlider(F)V

    .line 1484
    .end local v0    # "top":Ljava/lang/String;
    goto/16 :goto_0

    .line 1440
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setBackgroundColor(I)V

    .line 1441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->launcherTime:J

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1444
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "openLauncher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openLauncher()V

    .line 1446
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 1502
    :pswitch_3
    goto :goto_0

    .line 1423
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 1424
    const-string v0, "NavigationBarViewForPMA"

    const-string v4, "openAppListApp"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1429
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAppListSlider()V

    goto :goto_0

    .line 1433
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->CLIMATE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1434
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->needCloseClimate:Z

    .line 1436
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openAppListApp()V

    .line 1438
    goto :goto_0

    .line 1487
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 1488
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "open360"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1494
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->open360()V

    .line 1495
    nop

    .line 1506
    :cond_f
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0174
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a01e2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a0200
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 3

    .line 351
    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->dockBackground:Landroid/widget/LinearLayout;

    .line 352
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgBackHome:Lcom/airbnb/lottie/LottieAnimationView;

    .line 353
    const v0, 0x7f0a0176

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameHome:Landroid/widget/FrameLayout;

    .line 354
    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    .line 355
    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameApplist:Landroid/widget/FrameLayout;

    .line 356
    const v0, 0x7f0a01fb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenCarSettings:Lcom/airbnb/lottie/LottieAnimationView;

    .line 357
    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    .line 358
    const v0, 0x7f0a04bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    .line 359
    const v0, 0x7f0a04be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    .line 360
    const v0, 0x7f0a04d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTemp:Lcom/android/systemui/statusbar/pma/TemperatureTextView;

    .line 361
    const v0, 0x7f0a04d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    .line 362
    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilation:Landroid/widget/ImageView;

    .line 363
    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameDriverHeatVentilation:Landroid/widget/FrameLayout;

    .line 364
    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilation:Landroid/widget/ImageView;

    .line 365
    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->framePassengerHeatVentilation:Landroid/widget/FrameLayout;

    .line 366
    const v0, 0x7f0a01f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimateLayout:Landroid/widget/FrameLayout;

    .line 367
    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimate:Landroid/widget/FrameLayout;

    .line 368
    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpen360:Lcom/airbnb/lottie/LottieAnimationView;

    .line 369
    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frame360:Landroid/widget/FrameLayout;

    .line 370
    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    .line 371
    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    .line 372
    const v0, 0x7f0a0200

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    .line 373
    const v0, 0x7f0a0201

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    .line 375
    const v0, 0x7f0a01fa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenMedia:Landroid/widget/ImageView;

    .line 376
    const v0, 0x7f0a0177

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameMedia:Landroid/widget/FrameLayout;

    .line 377
    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameVolume:Landroid/widget/FrameLayout;

    .line 378
    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    const v0, 0x7f0a01d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    .line 408
    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimateEcoAuto:Landroid/widget/ImageView;

    .line 409
    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimateShift:Landroid/widget/ImageView;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameHome:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameApplist:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameMedia:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frame360:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$IsJd2I6ZCEArtPk28f9pD7mdMbU;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimateLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameDriverHeatVentilation:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->framePassengerHeatVentilation:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempLeftArrow:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverTempRightArrow:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempLeftArrow:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerTempRightArrow:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameVolume:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$HYEqsf1dS5yfeK_sbkIAeVGZs6Q;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->OPEN_CLIMATE_FILTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->changeDayNigtMode(I)V

    .line 455
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeDropDownBoxView()V

    .line 1512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 1513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstY:F

    goto/16 :goto_0

    .line 1514
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1515
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    const v1, 0x44cda000    # 1645.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    const v1, 0x44dca000    # 1765.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1517
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1518
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "openAppListApp scroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenAppList:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1523
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAppListSlider()V

    goto :goto_0

    .line 1527
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->CLIMATE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1528
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->needCloseClimate:Z

    .line 1530
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openAppListApp()V

    .line 1535
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "topActivityInfo"    # Landroid/content/ComponentName;

    .line 269
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "NavigationBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopActivityChanged : topActivityInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    if-eqz p1, :cond_10

    .line 274
    sput-object p1, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mTopActivityInfo:Landroid/content/ComponentName;

    .line 275
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "classNmae":Ljava/lang/String;
    const-string v2, "com.mrbattery.exterioraudioplaydemo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 278
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topActivityIsOutsideVolume:Z

    goto :goto_0

    .line 280
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->topActivityIsOutsideVolume:Z

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    const-string v2, "com.geely.pma.settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isStrFirstSetting:Z

    if-eqz v2, :cond_2

    .line 291
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isStrFirstSetting:Z

    .line 292
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 293
    const-string v2, "NavigationBarViewForPMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTopActivityChanged : isStrFirstSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isStrFirstSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->vis:Z

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->changeBackgroundResource(IZ)V

    .line 298
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setStatusBarMode(I)V

    .line 301
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 302
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDayNightMode()V

    .line 305
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v5, 0x7

    if-eqz v2, :cond_b

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->removeNewApp(Ljava/lang/String;)V

    .line 307
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->needCloseClimate:Z

    if-nez v2, :cond_a

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 310
    :cond_8
    const-string v2, "com.android.packageinstaller"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "com.android.packageinstaller"

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 311
    const-string v2, "com.zeekrlife.connect.core"

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground()Z

    move-result v2

    if-nez v2, :cond_b

    .line 312
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 318
    :cond_a
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->needCloseClimate:Z

    .line 321
    :cond_b
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->prePackageName:Ljava/lang/String;

    .line 322
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->preClassNmae:Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->iEvaService:Lcom/zeekr/eva/service/IEvaService;

    if-nez v2, :cond_c

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->bindServiceInterface()V

    .line 327
    :cond_c
    const-string v2, "com.zeekr.scenario.customization"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    :cond_d
    const-string v2, "com.netease.cloudmusic.iot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 332
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->notifyEvaCurType(I)V

    goto :goto_3

    .line 333
    :cond_e
    const-string v2, "com.bilibili.bilithings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 334
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->notifyEvaCurType(I)V

    goto :goto_3

    .line 336
    :cond_f
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->notifyEvaCurType(I)V

    .line 339
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "classNmae":Ljava/lang/String;
    :cond_10
    :goto_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 835
    .local v1, "action":I
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 836
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 837
    const-string v2, "NavigationBarViewForPMA"

    const-string v4, "onTouch: mIOnViewClickListener == null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    return v3

    .line 841
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->driverHeatOrVentilationChange()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilationClickable:I

    .line 842
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->passengerHeatOrVentilationChange()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilationClickable:I

    .line 843
    const/16 v2, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v1, :cond_2

    if-eq v3, v1, :cond_2

    if-ne v7, v1, :cond_3

    .line 844
    :cond_2
    iget-object v8, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 845
    iget-object v8, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-object v8, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 847
    iget-object v8, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    iget-object v8, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->H:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    iget-object v8, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->ghandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ecccccd    # 0.4f

    const/4 v12, 0x0

    const-wide/16 v13, 0x3e8

    const/4 v15, 0x0

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_6

    .line 931
    :sswitch_0
    iput v3, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 932
    if-nez v1, :cond_4

    .line 934
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 936
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 937
    :cond_4
    if-eq v3, v1, :cond_6

    if-ne v7, v1, :cond_5

    goto :goto_0

    .line 951
    :cond_5
    if-ne v9, v1, :cond_24

    .line 952
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 939
    :cond_6
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvPassengerTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 940
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 941
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_8

    .line 942
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v4, -0x2

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 943
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    .line 944
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto :goto_1

    .line 946
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v15}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 949
    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowVisible(Z)V

    .line 950
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closePassengerTempSlider(Z)V

    goto/16 :goto_6

    .line 906
    :sswitch_1
    iput v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 907
    if-nez v1, :cond_9

    .line 909
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 911
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 912
    :cond_9
    if-eq v3, v1, :cond_b

    if-ne v7, v1, :cond_a

    goto :goto_2

    .line 926
    :cond_a
    if-ne v9, v1, :cond_24

    .line 927
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 914
    :cond_b
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->tvDriverTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 916
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_d

    .line 917
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 918
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    .line 919
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto :goto_3

    .line 921
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v15}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 924
    :cond_d
    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowVisible(Z)V

    .line 925
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeDriverTempSlider(Z)V

    goto/16 :goto_6

    .line 1042
    :sswitch_2
    const/16 v2, 0x9

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 1043
    if-nez v1, :cond_e

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 1046
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 1047
    :cond_e
    if-eq v7, v1, :cond_f

    if-ne v3, v1, :cond_24

    .line 1048
    :cond_f
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closePassengerTempSlider(Z)V

    .line 1049
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 1050
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_24

    .line 1051
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    .line 1052
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 1053
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto/16 :goto_6

    .line 1026
    :sswitch_3
    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 1027
    if-nez v1, :cond_10

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 1030
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 1031
    :cond_10
    if-eq v7, v1, :cond_11

    if-ne v3, v1, :cond_24

    .line 1032
    :cond_11
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closePassengerTempSlider(Z)V

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 1034
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_24

    .line 1035
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    .line 1036
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v15}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 1037
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto/16 :goto_6

    .line 880
    :sswitch_4
    iput v5, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 881
    if-nez v1, :cond_12

    .line 882
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 884
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 885
    :cond_12
    if-eq v3, v1, :cond_13

    if-ne v7, v1, :cond_24

    .line 886
    :cond_13
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameOpenClimateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 888
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_15

    .line 889
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 890
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openClimateApp()V

    .line 891
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    if-nez v2, :cond_14

    .line 892
    const-string v2, "NavigationBarViewForPMA"

    const-string v4, "onTouch: play climate click"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 895
    :cond_14
    const-string v2, "laucher_dock_driver_ac_open"

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 899
    :cond_15
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeClimateSlider(Z)V

    .line 900
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_24

    .line 901
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgClimate:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_6

    .line 1010
    :sswitch_5
    const/4 v2, 0x7

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 1011
    if-nez v1, :cond_16

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 1014
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 1015
    :cond_16
    if-eq v7, v1, :cond_17

    if-ne v3, v1, :cond_24

    .line 1016
    :cond_17
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeDriverTempSlider(Z)V

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 1018
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_24

    .line 1019
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    .line 1020
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 1021
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto/16 :goto_6

    .line 994
    :sswitch_6
    iput v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 995
    if-nez v1, :cond_18

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 998
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto/16 :goto_6

    .line 999
    :cond_18
    if-eq v7, v1, :cond_19

    if-ne v3, v1, :cond_24

    .line 1000
    :cond_19
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeDriverTempSlider(Z)V

    .line 1001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 1002
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_24

    .line 1003
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    .line 1004
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v15}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 1005
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto/16 :goto_6

    .line 853
    :sswitch_7
    iput v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 854
    and-int/lit16 v2, v1, 0xff

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 861
    :pswitch_0
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    .line 862
    goto :goto_5

    .line 865
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    .line 866
    iget-wide v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchUpTime:J

    iget-wide v6, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchOnLongPressTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v13

    if-gez v2, :cond_1b

    .line 867
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v4, -0x5

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 868
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v12}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openVolumeUI(F)V

    .line 869
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    goto :goto_4

    .line 871
    :cond_1a
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v2, v15}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 874
    :cond_1b
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameVolume:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 875
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeVolumeSlider(Z)V

    goto :goto_5

    .line 856
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 857
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    .line 858
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->frameVolume:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 859
    nop

    .line 878
    :goto_5
    goto/16 :goto_6

    .line 975
    :sswitch_8
    iput v7, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 976
    if-nez v1, :cond_1e

    .line 977
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_1c

    .line 978
    const-string v2, "NavigationBarViewForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch: PASSENGER_HEAT_VENTILATION , imgPassengerHeatVentilationClickable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilationClickable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_1c
    iget v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilationClickable:I

    if-eq v2, v3, :cond_1d

    .line 981
    return v3

    .line 984
    :cond_1d
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilation:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 986
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto :goto_6

    .line 987
    :cond_1e
    if-eq v3, v1, :cond_1f

    if-ne v7, v1, :cond_24

    .line 989
    :cond_1f
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgPassengerHeatVentilation:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 990
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closePassengerHeatSlider(Z)V

    goto :goto_6

    .line 956
    :sswitch_9
    iput v9, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->touchType:I

    .line 957
    if-nez v1, :cond_22

    .line 958
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 959
    const-string v2, "NavigationBarViewForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch: DRIVER_HEAT_VENTILATION , imgDriverHeatVentilationClickable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilationClickable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_20
    iget v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilationClickable:I

    if-eq v2, v3, :cond_21

    .line 962
    return v3

    .line 965
    :cond_21
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilation:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->userDragFirstX:F

    .line 967
    iput-boolean v15, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    goto :goto_6

    .line 968
    :cond_22
    if-eq v3, v1, :cond_23

    if-ne v7, v1, :cond_24

    .line 970
    :cond_23
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgDriverHeatVentilation:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 971
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isScroll:Z

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeDriverHeatSlider(Z)V

    .line 1058
    :cond_24
    :goto_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mSimpleOnGestureListener:Landroid/view/GestureDetector;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1059
    return v3

    :sswitch_data_0
    .sparse-switch
        0x7f0a0175 -> :sswitch_9
        0x7f0a0178 -> :sswitch_8
        0x7f0a017a -> :sswitch_7
        0x7f0a01e2 -> :sswitch_6
        0x7f0a01e3 -> :sswitch_5
        0x7f0a01f9 -> :sswitch_4
        0x7f0a0200 -> :sswitch_3
        0x7f0a0201 -> :sswitch_2
        0x7f0a04be -> :sswitch_1
        0x7f0a04d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reorient()V
    .locals 0

    .line 1089
    return-void
.end method

.method public setClimate(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isZero"    # Ljava/lang/Boolean;

    .line 1253
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$OMELA9E2cEOjO6YAwpjICWb0Hv0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$OMELA9E2cEOjO6YAwpjICWb0Hv0;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1260
    return-void
.end method

.method public setClimateClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isClimateClickable:Z

    .line 1143
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$G0_8xMyqKm1mTRVfzFMtGgt4BYc;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$G0_8xMyqKm1mTRVfzFMtGgt4BYc;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1151
    return-void
.end method

.method public setClimateEcoAuto(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1263
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$hDaCZNkVbv2OBYxvEtuNA_2FKqM;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$hDaCZNkVbv2OBYxvEtuNA_2FKqM;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1264
    return-void
.end method

.method public setClimateShift(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "shift"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1246
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$A_ygVdbqgbAziyHTz6ZbIyqEJQ8;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1250
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 0
    .param p1, "disabledFlags"    # I

    .line 1082
    return-void
.end method

.method public setDriverHeatClickable(Z)V
    .locals 2
    .param p1, "isClickable"    # Z

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    if-eqz v0, :cond_0

    .line 1216
    if-nez p1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closePassengerHeatSlider(Z)V

    .line 1220
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$OovBuum4bHa8IgM9wdapFOqQ8aQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$OovBuum4bHa8IgM9wdapFOqQ8aQ;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1223
    return-void
.end method

.method public setDriverHeatVentilation(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1226
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$ccezlPypubeXXxvAA11_ykDiRSY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$ccezlPypubeXXxvAA11_ykDiRSY;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1227
    return-void
.end method

.method public setDriverTempArrowVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1337
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$57fBV-_FeHvcMzr0toUOhP1jtX8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$57fBV-_FeHvcMzr0toUOhP1jtX8;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1350
    return-void
.end method

.method public setDriverTempArrowaAlpha(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1267
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$ZVopvzbzlpuA6fYk_EAh8Qs7szg;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$ZVopvzbzlpuA6fYk_EAh8Qs7szg;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1299
    return-void
.end method

.method public setDriverTempClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1126
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$AN8Ky755mrTn4RZDQ7VaNLn2NEY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$AN8Ky755mrTn4RZDQ7VaNLn2NEY;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1131
    return-void
.end method

.method public setDriverTempNormalState(F)V
    .locals 1
    .param p1, "temp"    # F

    .line 1118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isDriverTempMaxMin:I

    .line 1119
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$o-P17R07FPQNACqHGmREeoLcTFk;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$o-P17R07FPQNACqHGmREeoLcTFk;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1123
    return-void
.end method

.method public setDriverTempOff(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "tempOff"    # Ljava/lang/Boolean;

    .line 1165
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$JWugwWSBvEm9Z7jFjxdRhM7LEOQ;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1172
    return-void
.end method

.method public setDriverTempStringState(Ljava/lang/String;)V
    .locals 1
    .param p1, "driverTemp"    # Ljava/lang/String;

    .line 1154
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isDriverTempMaxMin:I

    goto :goto_0

    .line 1156
    :cond_0
    const-string v0, "HIGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isDriverTempMaxMin:I

    .line 1159
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$bgdzoeOvr70pSqc2YR_YM1aVxwM;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$bgdzoeOvr70pSqc2YR_YM1aVxwM;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1163
    return-void
.end method

.method public setDriverVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1230
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$seRZ3TiQoSXoF_4FLW__gBI4BTM;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$seRZ3TiQoSXoF_4FLW__gBI4BTM;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1231
    return-void
.end method

.method public setIsStrFirstSetting()V
    .locals 1

    .line 1114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isStrFirstSetting:Z

    .line 1115
    return-void
.end method

.method public setMuteState(ZI)V
    .locals 5
    .param p1, "isMute"    # Z
    .param p2, "level"    # I

    .line 1373
    iput p2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mLevel:I

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1375
    .local v0, "isSliderShow":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->oneWorld:I

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    nop

    .line 1376
    .local v1, "dayOrNight":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dock_volume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsOut:Z

    if-eqz v3, :cond_3

    const-string v3, "_occ"

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v3, "_day"

    goto :goto_2

    :cond_4
    const-string v3, "_night"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "json":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->volumeJson:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1378
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1379
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1381
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 1382
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 1383
    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->volumeJson:Ljava/lang/String;

    .line 1385
    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsMute:Z

    if-eq v3, p1, :cond_8

    .line 1386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsMute:Z

    .line 1387
    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$NvXmf5MZYojRnVTd6DztDUzAce0;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$NvXmf5MZYojRnVTd6DztDUzAce0;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1401
    :cond_8
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 0
    .param p1, "hints"    # I

    .line 1106
    return-void
.end method

.method public setOnViewClickListener(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;)V
    .locals 2
    .param p1, "iOnViewClickListener"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    .line 1109
    const-string v0, "NavigationBarViewForPMA"

    const-string/jumbo v1, "setOnViewClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    .line 1111
    return-void
.end method

.method public setOutMuteState(Z)V
    .locals 4
    .param p1, "isOut"    # Z

    .line 1404
    const-string v0, "NavigationBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutMuteState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsOut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsOut:Z

    if-eq v0, p1, :cond_6

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1407
    .local v0, "isSliderShow":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDayNightMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->oneWorld:I

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isLauncherHomeForeground()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    nop

    .line 1408
    .local v1, "dayOrNight":Z
    :cond_2
    sput-boolean p1, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsOut:Z

    .line 1409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dock_volume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsOut:Z

    if-eqz v3, :cond_3

    const-string v3, "_occ"

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v3, "_day"

    goto :goto_2

    :cond_4
    const-string v3, "_night"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->volumeJson:Ljava/lang/String;

    .line 1410
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1411
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->volumeJson:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 1412
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->imgOpenVolumeUI:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsMute:Z

    if-eqz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 1415
    .end local v0    # "isSliderShow":Z
    .end local v1    # "dayOrNight":Z
    :cond_6
    return-void
.end method

.method public setPassengerHeatClickable(Z)V
    .locals 2
    .param p1, "isClickable"    # Z

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    if-eqz v0, :cond_0

    .line 1205
    if-nez p1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeDriverHeatSlider(Z)V

    .line 1209
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$eLX3iJSFlcRJSH36hSa-kF-xuMg;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$eLX3iJSFlcRJSH36hSa-kF-xuMg;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1212
    return-void
.end method

.method public setPassengerHeatVentilation(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1238
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$IHSohIwgk2Gx_otLw0C1RxZkmtY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$IHSohIwgk2Gx_otLw0C1RxZkmtY;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1239
    return-void
.end method

.method public setPassengerTempArrowAlpha(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1302
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$RKkC-jdv2iugYzcc_OhXM0x9geU;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$RKkC-jdv2iugYzcc_OhXM0x9geU;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1334
    return-void
.end method

.method public setPassengerTempArrowVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1353
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$--AXyBhiDQl9JJLebS8dRkZGkJE;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$--AXyBhiDQl9JJLebS8dRkZGkJE;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method

.method public setPassengerTempClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .line 1134
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$YPbnpHkjjyT1bo0wHUUfwhj-Xi0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$YPbnpHkjjyT1bo0wHUUfwhj-Xi0;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1139
    return-void
.end method

.method public setPassengerTempNormalState(F)V
    .locals 1
    .param p1, "temp"    # F

    .line 1187
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isPassengerTempMaxMin:I

    .line 1188
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$lfNm3U8wrzrcMfkJaFJAT3VMigY;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method

.method public setPassengerTempOff(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "tempOff"    # Ljava/lang/Boolean;

    .line 1194
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$GVzRn54avuDYUFW5iMvCR4yFlT8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$GVzRn54avuDYUFW5iMvCR4yFlT8;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1201
    return-void
.end method

.method public setPassengerTempStringState(Ljava/lang/String;)V
    .locals 1
    .param p1, "passengerTemp"    # Ljava/lang/String;

    .line 1175
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isPassengerTempMaxMin:I

    goto :goto_0

    .line 1177
    :cond_0
    const-string v0, "HIGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->isPassengerTempMaxMin:I

    .line 1180
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$9B6wKbhH4avXeTFUm1rH5YKF4Bs;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1184
    return-void
.end method

.method public setPassengerVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1234
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$fVYi2v4OBiJdRlq2jng6qu3kvx0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$NavigationBarViewForPMA$fVYi2v4OBiJdRlq2jng6qu3kvx0;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->post(Ljava/lang/Runnable;)Z

    .line 1235
    return-void
.end method

.method public setStatusBarWindowState(I)V
    .locals 1
    .param p1, "statusBarWindowState"    # I

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mSliderWindowManager:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setStatusBarWindowState(I)V

    .line 1540
    return-void
.end method

.method protected updateLayoutTransitionsEnabled()V
    .locals 0

    .line 1094
    return-void
.end method
