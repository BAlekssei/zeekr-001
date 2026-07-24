.class Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;
.super Ljava/lang/Object;
.source "CarAPIProxy.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/CarAPIProxy;->initCar(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarAPIProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 61
    const-string v0, "CarAPIProxy"

    const-string v1, "Car onConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->access$000(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->access$100(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)V

    .line 64
    return-void
.end method

.method public onDisConnected()V
    .locals 2

    .line 68
    const-string v0, "CarAPIProxy"

    const-string v1, "Car onDisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->access$000(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;->this$0:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->access$200(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)V

    .line 71
    return-void
.end method
