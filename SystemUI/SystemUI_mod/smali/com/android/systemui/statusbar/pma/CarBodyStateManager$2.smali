.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;
.super Landroid/database/ContentObserver;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->watchForUIMode(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 977
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 980
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    .line 982
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watchForUIMode,mCarBodyStateData.mDayOrNight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDayNightMode()V

    .line 986
    return-void
.end method
