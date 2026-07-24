.class public Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
.super Ljava/lang/Object;
.source "NavigationBarControllerForPMA.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
.implements Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;,
        Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;
    }
.end annotation


# static fields
.field private static final CLIMATE_ACTIVITYNAME:Ljava/lang/String;

.field private static final CLIMATE_PACKAGENAME:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final ECARX_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static final LAUNCHER_START_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT:Z


# instance fields
.field private isOutVCC:Z

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

.field private mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field private mUninstallDialog:Lcom/android/systemui/statusbar/pma/UninstallDialog;

.field private mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

.field private mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private newApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    .line 84
    const-string/jumbo v0, "ro.product.project"

    const-string v1, "DC1E_CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DC1E_CN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->PROJECT:Z

    .line 110
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->PROJECT:Z

    if-eqz v0, :cond_0

    const-string v0, "com.geely.pma.climate"

    goto :goto_0

    :cond_0
    const-string v0, "com.zeekr.climate.a1"

    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    .line 111
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->PROJECT:Z

    if-eqz v0, :cond_1

    const-string v0, "com.geely.pma.climate.ClimateActivity"

    goto :goto_1

    :cond_1
    const-string v0, "com.zeekr.climate.a1.ClimateActivity"

    :goto_1
    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_ACTIVITYNAME:Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ecarx.launcher3"

    const-string v2, "ecarx.launcher3.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->ECARX_HOME_COMPONENT:Landroid/content/ComponentName;

    .line 120
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->LAUNCHER_START_APPS:Ljava/util/Set;

    .line 123
    sget-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->LAUNCHER_START_APPS:Ljava/util/Set;

    const-string v1, "com.ecarx.multimedia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->LAUNCHER_START_APPS:Ljava/util/Set;

    sget-object v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationBarViewForPMA"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .param p3, "statusBarForPMA"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 94
    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mHandler:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->pState:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->newApps:Ljava/util/ArrayList;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    .line 131
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 132
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mHandler:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 134
    const-class v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBarComponent:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 135
    const-string/jumbo v0, "systemhmi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 136
    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 138
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V

    .line 140
    new-instance v0, Lcom/android/systemui/statusbar/pma/UserCenterToast;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/UserCenterToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mUserCenterToast:Lcom/android/systemui/statusbar/pma/UserCenterToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->create()V

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/pma/UninstallDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    const v2, 0x7f12032e

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/UninstallDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mUninstallDialog:Lcom/android/systemui/statusbar/pma/UninstallDialog;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mUninstallDialog:Lcom/android/systemui/statusbar/pma/UninstallDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UninstallDialog;->create()V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->initViewClick()V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->initSliderClick()V

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->t:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$ToastFormat;

    .line 152
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->newApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->pState:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isClimateAppForeground(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isLauncherHomeForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isStreamMute()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->goToLunchAppList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Boolean;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->startMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchAppByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
    .param p1, "x1"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isOutVCC:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/UninstallDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mUninstallDialog:Lcom/android/systemui/statusbar/pma/UninstallDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->sendRecentOpenedApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getTopActivityName()Ljava/lang/String;
    .locals 5

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    .line 581
    .local v1, "runingInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v2, :cond_5

    .line 584
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 585
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 586
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 594
    :cond_0
    goto :goto_0

    .line 588
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 591
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 592
    const-string v3, "NavigationBarControllerForPMA"

    const-string v4, "getTopActivityName info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    goto :goto_1

    .line 600
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 601
    const-string v2, "NavigationBarControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopPackageName class info == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_3
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 597
    :cond_4
    :goto_1
    const-string v2, "Unknow"

    return-object v2

    .line 605
    :cond_5
    const-string v2, "Unknow"

    return-object v2
.end method

.method private getTopPackageName()Ljava/lang/String;
    .locals 5

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    .line 546
    .local v1, "runingInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v2, :cond_4

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 550
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 551
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 559
    :cond_0
    goto :goto_0

    .line 553
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 556
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 557
    const-string v3, "NavigationBarControllerForPMA"

    const-string v4, "getTopPackageName info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 562
    const-string v2, "Unknow"

    return-object v2

    .line 565
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 566
    const-string v2, "NavigationBarControllerForPMA"

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

    .line 568
    :cond_3
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 570
    :cond_4
    const-string v2, "Unknow"

    return-object v2
.end method

.method public static getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .line 1058
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1059
    .local v0, "pos":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1060
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;
    .param p2, "stream"    # I

    .line 1123
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1124
    .local v0, "tmpStreamState":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-eqz v0, :cond_0

    .line 1125
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    return v1

    .line 1127
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private goToLunchAppList()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10204000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 423
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "ecarx.launcher3"

    const-string v3, "ecarx.launcher3.AppPane"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 430
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void
.end method

.method private initSliderClick()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->setSliderClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$SliderClickListener;)V

    .line 236
    return-void
.end method

.method private initViewClick()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setOnViewClickListener(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;)V

    .line 1025
    return-void
.end method

.method private isClimateAppForeground(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "topPackage":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 524
    const-string v1, "NavigationBarControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClimateAppForeground , topPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,ready to  packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 529
    :cond_1
    const-string v2, "Unknow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    return v1

    .line 532
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "seat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 535
    :cond_4
    return v1

    .line 527
    :cond_5
    :goto_0
    return v1
.end method

.method private isLauncherHomeForeground()Z
    .locals 2

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    .line 614
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

    .line 615
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.zeekr.carlauncher3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 616
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private isMute(Lcom/android/systemui/plugins/VolumeDialogController$State;)Z
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isOutVCC:Z

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 1146
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xf

    .line 1150
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    return v1

    .line 1154
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1155
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getVolumeStateLevel(Lcom/android/systemui/plugins/VolumeDialogController$State;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    return v1

    .line 1161
    :cond_1
    return v5
.end method

.method private isStreamMute()Z
    .locals 3

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 1166
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 1167
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 1168
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mVolumeDialogController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 1169
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1165
    :cond_0
    return v1
.end method

.method private lunchAppByPackageName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 433
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lunchAppByPackageName,packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isClimateAppForeground(Ljava/lang/String;)Z

    move-result v0

    .line 445
    .local v0, "isClimateApp":Z
    if-eqz v0, :cond_3

    .line 449
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "yfve.intent.action.CLICK_NAVIGATIONBAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string/jumbo v2, "seat"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    const-string v2, "DOCK_CLICK"

    const-string/jumbo v3, "seat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 454
    :cond_2
    const-string v2, "DOCK_CLICK"

    const-string/jumbo v3, "temp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    return-void

    .line 461
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 463
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 464
    const-string v2, "NavigationBarControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lunchAppByPackageName,intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_4
    const-string v2, "ecarx.launcher3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    const-string v2, "lunchAppByPackageName"

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchHomeApp(Ljava/lang/String;)V

    .line 469
    return-void

    .line 472
    :cond_5
    if-nez v1, :cond_6

    .line 473
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchAppWithActivityName(Ljava/lang/String;)V

    .line 474
    return-void

    .line 476
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 477
    const-string v2, "DOCK_CLICK"

    const-string/jumbo v3, "temp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_1

    .line 481
    :catch_0
    move-exception v2

    .line 484
    :goto_1
    return-void

    .line 437
    .end local v0    # "isClimateApp":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 438
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "lunchAppByPackageName,packageName == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_9
    return-void
.end method

.method private lunchAppWithActivityName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 633
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 634
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lunchAppWithActivityName,packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    if-eqz p1, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    if-nez v0, :cond_3

    .line 641
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 642
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "lunchAppByActivityName,mStatusBar == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_2
    return-void

    .line 648
    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entertainment_keep"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    const-string v1, "com.geely.pma.settings"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 651
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.geely.pma.settings.SettingsActivity"

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 652
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I

    goto/16 :goto_0

    .line 653
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 654
    new-instance v1, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO_ACTIVITY:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 655
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I

    goto :goto_0

    .line 656
    :cond_5
    const-string v1, "com.ecarx.multimedia"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 657
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.ecarx.multimedia.MainActivity"

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I

    goto :goto_0

    .line 659
    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 660
    new-instance v1, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_ACTIVITYNAME:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 661
    const-string v1, "DOCK_CLICK"

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I

    goto :goto_0

    .line 663
    :cond_7
    const-string v1, "ecarx.launcher3"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 664
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "ecarx.launcher3.Launcher"

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I

    goto :goto_0

    .line 666
    :cond_8
    const-string/jumbo v1, "seat"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 667
    new-instance v1, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_ACTIVITYNAME:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 668
    const-string v1, "DOCK_CLICK"

    const-string/jumbo v3, "seat"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_0
    goto :goto_1

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 673
    const-string v1, "NavigationBarControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lunchAppWithActivityName: ActivityNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_a
    :goto_1
    return-void

    .line 637
    :cond_b
    :goto_2
    return-void
.end method

.method private lunchHomeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 487
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lunchHomeApp reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->ECARX_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v1, "entertainment_keep"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 499
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 500
    .local v2, "componentName":Landroid/content/ComponentName;
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 501
    const-string v3, "NavigationBarControllerForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lunchHomeApp pms.resolveActivity componentName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->ECARX_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 514
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NavigationBarControllerForPMA"

    const-string v3, "lunchHomeApp Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendEvent(IIJIZ)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J
    .param p5, "code"    # I
    .param p6, "syncToPark"    # Z

    move/from16 v0, p2

    .line 1064
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1065
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1066
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1067
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3a5

    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1068
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3a4

    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1064
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1069
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v11, v2

    goto :goto_0

    :cond_0
    move v11, v3

    .line 1070
    .local v11, "repeatCount":I
    :goto_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    or-int/lit8 v4, v0, 0x8

    or-int/lit8 v15, v4, 0x40

    const/16 v16, 0x101

    move-object v4, v2

    move-wide/from16 v7, p3

    move/from16 v9, p1

    move/from16 v10, p5

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1074
    .local v2, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1077
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1078
    const-string v3, "NavigationBarControllerForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code: == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",syncToPark="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1104
    :cond_1
    move/from16 v5, p5

    move/from16 v6, p6

    :goto_1
    return-void
.end method

.method private sendRecentOpenedApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ecarx.launcher3.action.APP_LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "ecarx.launcher3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "PKG_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "CLS_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 245
    return-void
.end method

.method private startActivityUseLauncher(Landroid/view/View;Ljava/lang/String;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1028
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityUseLauncher pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1032
    return v1

    .line 1034
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    return v1

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1039
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_3

    .line 1040
    return v1

    .line 1043
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->LAUNCHER_START_APPS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1044
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1045
    if-eqz p1, :cond_4

    .line 1046
    invoke-static {p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1048
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    const v2, 0x7f0100c1

    const v3, 0x7f0100a7

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1049
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1050
    .local v1, "opts":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1051
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    .line 1050
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1052
    const/4 v2, 0x1

    return v2

    .line 1054
    .end local v1    # "opts":Landroid/os/Bundle;
    :cond_5
    return v1
.end method

.method private startMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "isFromNavi"    # Ljava/lang/Boolean;

    .line 156
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v1, "musicIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    const-string v2, "com.zeekr.media.qq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 161
    .local v2, "it":Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :goto_0
    const-string v4, "intent_from_sdk"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "auto_play"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string/jumbo v5, "request_focus"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string v5, "intent_from"

    const-string v6, "jike_dock"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    .end local v2    # "it":Landroid/content/Intent;
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e7

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 179
    .local v2, "openMedia":Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    .line 180
    .end local v2    # "openMedia":Landroid/app/PendingIntent;
    goto :goto_2

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "musicIntent":Landroid/content/Intent;
    :goto_2
    goto :goto_3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public addNewApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->newApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method public initSliderAppClick()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    new-instance v1, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->setAppClickListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;)V

    .line 362
    return-void
.end method

.method public onCarSpeedCheck(I)V
    .locals 4
    .param p1, "speed"    # I

    .line 404
    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mHandler:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

    if-eqz v0, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.iov.dueros.videoplayer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.bilibili.bilithings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mContext:Landroid/content/Context;

    const v1, 0x7f11024a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mHandler:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mHandler:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 412
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 413
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarSpeedCheck,speed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    :goto_0
    return-void
.end method

.method public onLauncherApp(I)V
    .locals 8
    .param p1, "appIndex"    # I

    .line 381
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 382
    const-string v0, "com.ecarx.multimedia"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchAppByPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 384
    sget-object v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->CLIMATE_PACKAGENAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchAppByPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 386
    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->startActivityUseLauncher(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    sget-object v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchAppByPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 390
    const-string v0, "com.geely.pma.settings"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->lunchAppByPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 398
    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->sendEvent(IIJIZ)V

    .line 400
    :cond_5
    :goto_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1108
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->isMute(Lcom/android/systemui/plugins/VolumeDialogController$State;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1110
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "NavigationBarControllerForPMA"

    const-string v3, " onStateChanged  Mute true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setMuteState(ZI)V

    goto :goto_0

    .line 1115
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1116
    const-string v0, "NavigationBarControllerForPMA"

    const-string v3, " onStateChanged  Mute false"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mNavigationBarViewForPMA:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setMuteState(ZI)V

    .line 1120
    :goto_0
    return-void
.end method

.method public removeNewAppDot(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 371
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNewAppDot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->newApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->mStatusBar:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->removeNewApp(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method
