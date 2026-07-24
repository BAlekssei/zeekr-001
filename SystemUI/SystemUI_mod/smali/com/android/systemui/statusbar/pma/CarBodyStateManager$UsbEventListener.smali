.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0

    .line 5961
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 5963
    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 5967
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5968
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged--path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5970
    :cond_0
    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5971
    return-void

    .line 5973
    :cond_1
    const-string v0, "mounted"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x20

    if-nez v0, :cond_4

    const-string v0, "checking"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5976
    :cond_2
    const-string/jumbo v0, "unmounted"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5977
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    .line 5978
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto :goto_1

    .line 5980
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    .line 5981
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto :goto_1

    .line 5974
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    .line 5975
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 5983
    :goto_1
    return-void
.end method
