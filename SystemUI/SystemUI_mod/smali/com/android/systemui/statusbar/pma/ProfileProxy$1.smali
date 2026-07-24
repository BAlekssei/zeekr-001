.class Lcom/android/systemui/statusbar/pma/ProfileProxy$1;
.super Ljava/lang/Object;
.source "ProfileProxy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/ProfileProxy;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/ProfileProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/ProfileProxy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/ProfileProxy;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->getICar()Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object v0

    .line 76
    .local v0, "car":Lcom/ecarx/xui/adaptapi/car/ICar;
    const-string v1, "Profile-ProfileProxyFLF"

    const-string v2, "Icar onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v0, :cond_0

    .line 78
    const-string v1, "Profile-ProfileProxyFLF"

    const-string v2, "car is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 81
    :cond_0
    const-string v1, "Profile-ProfileProxyFLF"

    const-string v2, "Car onConnected "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/ProfileProxy;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/ProfileProxy;->access$000(Lcom/android/systemui/statusbar/pma/ProfileProxy;Lcom/ecarx/xui/adaptapi/car/ICar;)V

    .line 83
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 87
    const-string v0, "Profile-ProfileProxyFLF"

    const-string v1, "Icar disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
