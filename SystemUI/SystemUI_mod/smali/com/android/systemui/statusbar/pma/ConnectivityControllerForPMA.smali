.class public Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
.super Ljava/lang/Object;
.source "ConnectivityControllerForPMA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;,
        Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBroadcastReceiver:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;

.field private mConnectivityService:Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

.field private mIPCPServiceConnectStatus:Z

.field private mIPCPWifiListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

.field private mRefreshWifiStatusHandler:Landroid/os/Handler;

.field private mSIMNetworkAvailable:Z

.field private mSIMSignalLevel:I

.field private mSIMSignalStrength:I

.field private mSIMStatus:I

.field private mSIMStatusIsShow:Z

.field private mSIMStatusSignalLevelShow:Z

.field private mWifiAPConnect:Z

.field private mWifiAPIconIsShow:Z

.field private mWifiAPMode:I

.field private mWifiConnected:Z

.field private mWifiIconIsShow:Z

.field private mWifiScan:Z

.field private mWifiSignalLevel:I

.field private refreshThread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mRefreshWifiStatusHandler:Landroid/os/Handler;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIPCPServiceConnectStatus:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMNetworkAvailable:Z

    .line 108
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalStrength:I

    .line 109
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalLevel:I

    .line 110
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusIsShow:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusSignalLevelShow:Z

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPMode:I

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiScan:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiConnected:Z

    .line 118
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPConnect:Z

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mBroadcastReceiver:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->refreshThread:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIPCPWifiListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIPCPWifiListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

    invoke-direct {v0, v1}, Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;-><init>(Lcom/yfvet/javaIpcp/base/IpcpServiceListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mConnectivityService:Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ACTION_CLEAR_CONNET_LIST_CONTROL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mBroadcastReceiver:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$EolBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIPCPServiceConnectStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMNetworkAvailable:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusSignalLevelShow:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->updateESIMIconState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->updateWifiAPIconState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->getWifiConnectStatus(Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->getWifiSigLevel(Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiScan:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiScan:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mConnectivityService:Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPMode:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPMode:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPConnect:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Ljava/lang/String;Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->judgeInit(Ljava/lang/String;Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->getSIMNetworkAvailable(Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->sendWifiConnectStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->getSIMStatue(Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->getSIMSignalStrength(Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalStrength:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalStrength:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    return p1
.end method

.method private getSIMNetworkAvailable(Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)Z
    .locals 2
    .param p1, "info"    # Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    .line 461
    if-nez p1, :cond_1

    .line 462
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "ConnectivityControllerForPMA"

    const-string v1, "getSIMNetworkAvailable info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;->getNetWorkAvailable()Z

    move-result v0

    return v0
.end method

.method private getSIMSignalStrength(Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I
    .locals 2
    .param p1, "info"    # Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    .line 472
    if-nez p1, :cond_1

    .line 473
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "ConnectivityControllerForPMA"

    const-string v1, "getSIMSignalStrength info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 478
    :cond_1
    invoke-virtual {p1}, Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;->getSignalLevel()I

    move-result v0

    return v0
.end method

.method private getSIMSingnalLevel(II)I
    .locals 1
    .param p1, "simState"    # I
    .param p2, "simSingalStrength"    # I

    .line 556
    const/4 v0, 0x5

    .line 557
    .local v0, "tmpLevel":I
    packed-switch p1, :pswitch_data_0

    .line 572
    const/4 v0, 0x5

    goto :goto_0

    .line 569
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalStrength:I

    .line 570
    goto :goto_0

    .line 560
    :pswitch_1
    const/4 v0, 0x5

    .line 561
    nop

    .line 575
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSIMStatue(Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;)I
    .locals 2
    .param p1, "info"    # Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;

    .line 483
    if-nez p1, :cond_1

    .line 484
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "ConnectivityControllerForPMA"

    const-string v1, "getSIMStatue info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_1
    invoke-virtual {p1}, Lcom/yfvet/javaIpcp/bean/wlan/OpESIMConnectionStatus_NotificationCyclic;->getStatus()I

    move-result v0

    return v0
.end method

.method private getWifiConnectStatus(Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)Z
    .locals 2
    .param p1, "info"    # Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;

    .line 494
    if-nez p1, :cond_1

    .line 495
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "ConnectivityControllerForPMA"

    const-string v1, "getWifiConnectStatus info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_1
    invoke-virtual {p1}, Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;->isConn_Status()Z

    move-result v0

    return v0
.end method

.method private getWifiSigLevel(Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;)I
    .locals 5
    .param p1, "info"    # Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;

    .line 505
    if-nez p1, :cond_1

    .line 506
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "ConnectivityControllerForPMA"

    const-string v1, "getWifiSigLevel info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 511
    :cond_1
    invoke-virtual {p1}, Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;->getNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 512
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 513
    const-string v0, "ConnectivityControllerForPMA"

    const-string v1, "getNetworkAvailable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_2
    const/4 v0, 0x5

    return v0

    .line 517
    :cond_3
    const/4 v0, 0x0

    .line 518
    .local v0, "tmpLevel":I
    invoke-virtual {p1}, Lcom/yfvet/javaIpcp/bean/wlan/Available_AP_INFO;->getRssi()I

    move-result v1

    .line 519
    .local v1, "rssi":I
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ConnectivityControllerForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiSigLevel rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_4
    const/16 v2, -0xc7

    if-gt v2, v1, :cond_9

    const/16 v2, 0xc7

    if-gt v1, v2, :cond_9

    .line 523
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v1, v2

    .line 524
    const/16 v2, -0x64

    if-gt v1, v2, :cond_5

    .line 525
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :cond_5
    const/16 v3, -0x55

    if-ge v2, v1, :cond_6

    if-gt v1, v3, :cond_6

    .line 527
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_6
    const/16 v2, -0x46

    if-ge v3, v1, :cond_7

    if-gt v1, v2, :cond_7

    .line 529
    const/4 v0, 0x2

    goto :goto_0

    .line 530
    :cond_7
    const/16 v3, -0x37

    if-ge v2, v1, :cond_8

    if-gt v1, v3, :cond_8

    .line 531
    const/4 v0, 0x3

    goto :goto_0

    .line 532
    :cond_8
    if-ge v3, v1, :cond_9

    .line 533
    const/4 v0, 0x4

    .line 536
    :cond_9
    :goto_0
    return v0
.end method

.method private judgeInit(Ljava/lang/String;Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;

    .line 180
    sget-object v0, Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;->IPCP_SUCCESS_INIT:Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;

    if-ne p2, v0, :cond_1

    .line 181
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "judgeInit: =IPCP_MSG_SUCCESS_INIT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIPCPServiceConnectStatus:Z

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mRefreshWifiStatusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->refreshThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 186
    :cond_1
    sget-object v0, Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;->IPCP_ERROR_INIT:Lcom/yfvet/javaIpcp/base/IpcpServiceErrorCode;

    if-ne p2, v0, :cond_2

    .line 187
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 188
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "judgeInit: =IPCP_ERROR_INIT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    :goto_0
    return-void
.end method

.method private sendWifiConnectStatus(Z)V
    .locals 3
    .param p1, "isconnected"    # Z

    .line 452
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendWifiConnectStatus isconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yfve.NETWORK_CONNECTITY_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    const-string v1, "isconnected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method private updateESIMIconState()V
    .locals 3

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusIsShow:Z

    .line 547
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalStrength:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->getSIMSingnalLevel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalLevel:I

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateESIMIconState mSIMSignalLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSIMStatusSignalLevelShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusSignalLevelShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSIMStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSIMStatusIsShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusIsShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusSignalLevelShow:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onESIMSignalStrengthChange(IZ)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusIsShow:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onESIMConnectStatusChange(IZ)V

    .line 553
    :cond_0
    return-void
.end method

.method private updateWifiAPIconState()V
    .locals 4

    .line 580
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWifiAPIconState mWifiAPMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSIMNetworkAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 582
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    .line 583
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    .line 584
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMNetworkAvailable:Z

    if-nez v0, :cond_2

    .line 586
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    goto :goto_0

    .line 588
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 589
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiScan:Z

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiScanStateChange(Z)V

    .line 591
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    goto :goto_0

    .line 594
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiScan:Z

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiScanStateChange(Z)V

    .line 596
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    .line 597
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    .line 599
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    if-eqz v0, :cond_4

    .line 600
    const-string v0, "ConnectivityControllerForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWifiAPIconState mWifiSignalLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mWifiIconIsShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWifiAPIconIsShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiSignalStateChange(IZ)V

    .line 602
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    if-nez v0, :cond_3

    .line 603
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPConnect:Z

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPConnect:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiApConnectStateChange(Z)V

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiAPStateChange(Z)V

    .line 608
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->updateESIMIconState()V

    .line 609
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mRefreshWifiStatusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->refreshThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public optConnectList()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mConnectivityService:Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;

    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/service/Connectivity/ConnectivityService;->WLANSTARememberedNetwks()V

    .line 177
    return-void
.end method

.method public setESIMTimeout()V
    .locals 2

    .line 612
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalLevel:I

    .line 613
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    .line 614
    iput v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    .line 615
    return-void
.end method

.method public setOnWifiAPStateChangeListener(Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;)V
    .locals 3
    .param p1, "iOnConnectivityStateChange"    # Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPConnect:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiApConnectStateChange(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiScan:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiScanStateChange(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiSignalLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiIconIsShow:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiSignalStateChange(IZ)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mWifiAPIconIsShow:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onWifiAPStateChange(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMSignalLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusSignalLevelShow:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onESIMSignalStrengthChange(IZ)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mIOnConnectivityStateChange:Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatus:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->mSIMStatusIsShow:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;->onESIMConnectStatusChange(IZ)V

    .line 155
    :cond_0
    return-void
.end method
