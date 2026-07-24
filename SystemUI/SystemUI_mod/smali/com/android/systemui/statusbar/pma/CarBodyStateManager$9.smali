.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$9;
.super Landroid/content/BroadcastReceiver;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 4016
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$9;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4020
    const-string v0, "CarBodyStateManager"

    const-string v1, "USER_UNLOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    const-string v0, "persist.sys.provision_version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4022
    .local v0, "oldVersion":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4023
    .local v2, "pm":Landroid/content/pm/PackageManager;
    move v3, v1

    .line 4025
    .local v3, "newVersion":I
    :try_start_0
    const-string v4, "com.ecarx.provision"

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    .line 4028
    goto :goto_0

    .line 4026
    :catch_0
    move-exception v1

    .line 4027
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CarBodyStateManager"

    const-string v5, "pm.getPackageInfo -> com.ecarx.provision // throw new RuntimException()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4029
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v3, :cond_0

    .line 4030
    const-string v4, "CarBodyStateManager"

    const-string v5, "newer version provision installed , enable it!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.ecarx.provision"

    const-string v6, "com.ecarx.provision.guide.GuideHelloActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4039
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$9;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z

    .line 4040
    return-void
.end method
