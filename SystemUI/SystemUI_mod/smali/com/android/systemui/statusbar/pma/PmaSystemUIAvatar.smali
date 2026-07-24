.class public Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;
.super Landroid/app/Service;
.source "PmaSystemUIAvatar.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBinder:Lcom/android/aidl/pma/IPmaSystemUIAvatar$Stub;

.field private mContext:Landroid/content/Context;

.field private mIActivityManager:Landroid/app/IActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mBinder:Lcom/android/aidl/pma/IPmaSystemUIAvatar$Stub;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTopPackageName()Ljava/lang/String;
    .locals 5

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    .line 112
    .local v1, "runingInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v2, :cond_4

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 115
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 123
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 120
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 121
    const-string v3, "PmaSystemUIAvatar"

    const-string v4, "getTopPackageName info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 125
    const-string v2, "Unknow"

    return-object v2

    .line 127
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 128
    const-string v2, "PmaSystemUIAvatar"

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

    .line 130
    :cond_3
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 132
    :cond_4
    const-string v2, "Unknow"

    return-object v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mBinder:Lcom/android/aidl/pma/IPmaSystemUIAvatar$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    iput-object p0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIAvatar;->mIActivityManager:Landroid/app/IActivityManager;

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 104
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 98
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
