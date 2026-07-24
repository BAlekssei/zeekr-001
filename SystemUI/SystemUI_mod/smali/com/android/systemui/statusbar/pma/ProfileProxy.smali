.class public Lcom/android/systemui/statusbar/pma/ProfileProxy;
.super Ljava/lang/Object;
.source "ProfileProxy.java"


# static fields
.field private static instance:Lcom/android/systemui/statusbar/pma/ProfileProxy;


# instance fields
.field private final CHECK_COUNT:I

.field private final TIME_CHECK_INTERVAL:J

.field private context:Landroid/content/Context;

.field public isUserProfileObserverExists:Z

.field private mIUserPreferenceObserver:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;

.field private userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->TIME_CHECK_INTERVAL:J

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->CHECK_COUNT:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->isUserProfileObserverExists:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/ProfileProxy;Lcom/ecarx/xui/adaptapi/car/ICar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ProfileProxy;
    .param p1, "x1"    # Lcom/ecarx/xui/adaptapi/car/ICar;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->initUserProfile(Lcom/ecarx/xui/adaptapi/car/ICar;)V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/pma/ProfileProxy;
    .locals 2

    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->instance:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/android/systemui/statusbar/pma/ProfileProxy;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/ProfileProxy;->instance:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/ProfileProxy;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/pma/ProfileProxy;->instance:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->instance:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    return-object v0
.end method

.method private initUserProfile(Lcom/ecarx/xui/adaptapi/car/ICar;)V
    .locals 4
    .param p1, "car"    # Lcom/ecarx/xui/adaptapi/car/ICar;

    .line 94
    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getUserProfileManager()Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->mIUserPreferenceObserver:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->mIUserPreferenceObserver:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->registerPreferceCallback(Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;)Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->getCurrentPid()I

    move-result v0

    .line 100
    .local v0, "currentPid":I
    const-string v1, "Profile-ProfileProxyFLF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPid = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "currentPid":I
    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "Profile-ProfileProxyFLF"

    const-string/jumbo v1, "userProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentPid()I
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->getCurrentId()I

    move-result v0

    .line 110
    .local v0, "pid":I
    const-string v1, "Profile-ProfileProxyFLF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return v0

    .line 112
    .end local v0    # "pid":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Profile-ProfileProxyFLF"

    const-string v2, "getCurrentPid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "Profile-ProfileProxyFLF"

    const-string v1, "getCurrentPid, userProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPreferenceId()I
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->getCurrentPreference()I

    move-result v0

    .line 142
    .local v0, "currentPreference":I
    const-string v1, "Profile-ProfileProxyFLF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPreference currentPreference:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return v0

    .line 144
    .end local v0    # "currentPreference":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Profile-ProfileProxyFLF"

    const-string v2, "getCurrentPreference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 148
    :cond_0
    const-string v0, "Profile-ProfileProxyFLF"

    const-string v1, "getCurrentPreference, userProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPreferenceId()I
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->getDefaultPreference()I

    move-result v0

    .line 126
    .local v0, "defaultPreference":I
    const-string v1, "Profile-ProfileProxyFLF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultPreferenceId defaultPreference:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return v0

    .line 128
    .end local v0    # "defaultPreference":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Profile-ProfileProxyFLF"

    const-string v2, "getDefaultPreferenceId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "Profile-ProfileProxyFLF"

    const-string v1, "getDefaultPreferenceId, userProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const-string v0, "Profile-ProfileProxyFLF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->context:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/ProfileProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/ProfileProxy$1;-><init>(Lcom/android/systemui/statusbar/pma/ProfileProxy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->addConnListener(Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;)V

    .line 91
    return-void
.end method

.method public registerPreferceCallback(Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->registerPreferceCallback(Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Profile-ProfileProxyFLF"

    const-string/jumbo v2, "registerPreferceCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->mIUserPreferenceObserver:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserPreferenceObserver;

    .line 210
    const-string v0, "Profile-ProfileProxyFLF"

    const-string/jumbo v1, "registerPreferceCallback, userProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_1
    return-void
.end method

.method public switchUserPreference(I)Z
    .locals 4
    .param p1, "habit"    # I

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy;->userProfile:Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->switchPreference(I)Z

    move-result v0

    .line 158
    .local v0, "isSuccess":Z
    const-string v1, "Profile-ProfileProxyFLF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPreference isSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return v0

    .line 160
    .end local v0    # "isSuccess":Z
    :catch_0
    move-exception v0

    .line 161
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Profile-ProfileProxyFLF"

    const-string/jumbo v2, "switchPreference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0    # "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 164
    :cond_0
    const-string v0, "Profile-ProfileProxyFLF"

    const-string/jumbo v1, "switchPreference, userProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
