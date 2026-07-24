.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;
.super Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;
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

    .line 3840
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 3844
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 3845
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3846
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnabled : var1== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    return-void
.end method

.method public onEnabled(ZI)V
    .locals 3
    .param p1, "var1"    # Z
    .param p2, "reason"    # I

    .line 3851
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/NotificationControlCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/NotificationControlCenter;->resetNotificationListStatus(ZI)V

    .line 3852
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnabled : var1== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    return-void
.end method

.method public onMicLocation(I)V
    .locals 3
    .param p1, "location"    # I

    .line 3869
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3870
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicLocation : location== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    return-void
.end method

.method public onMicReverb(I)V
    .locals 3
    .param p1, "reverb"    # I

    .line 3857
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3858
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicReverb : reverb== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    return-void
.end method

.method public onMicVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 3863
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3864
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicVolume : volume== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    return-void
.end method
