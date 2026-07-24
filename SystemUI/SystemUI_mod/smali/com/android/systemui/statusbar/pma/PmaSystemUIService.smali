.class public Lcom/android/systemui/statusbar/pma/PmaSystemUIService;
.super Landroid/app/Service;
.source "PmaSystemUIService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBinder:Lcom/android/aidl/pma/IPmaSystemUIService$Stub;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mBinder:Lcom/android/aidl/pma/IPmaSystemUIService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaSystemUIService;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 122
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "PmaSystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind mBinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mBinder:Lcom/android/aidl/pma/IPmaSystemUIService$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mBinder:Lcom/android/aidl/pma/IPmaSystemUIService$Stub;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 155
    const-string v0, "PmaSystemUIService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-eqz v0, :cond_1

    .line 158
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleHideOrShowBtDialerIcon(ZI)V

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService onUnbind mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 166
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 130
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "PmaSystemUIService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 138
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "PmaSystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    if-eqz v0, :cond_2

    .line 143
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "PmaSystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmaSystemUIService onUnbind : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleHideOrShowBtDialerIcon(ZI)V

    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService onUnbind mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
