.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;
.super Landroid/app/systemHMI/ISystemHMICallback$Stub;
.source "StatusBarForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 651
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-direct {p0}, Landroid/app/systemHMI/ISystemHMICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomainId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    const-string v0, "Hardkey"

    return-object v0
.end method

.method public getState(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    return-void
.end method

.method public onReceive(Ljava/lang/String;)Z
    .locals 11
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 656
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "domain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "domain":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "id":Ljava/lang/String;
    const-string v4, "payload"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 659
    .local v4, "payload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 660
    const-string v5, "StatusBarForPMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive-> jsonString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    const-string v5, "Hardkey"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 664
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 665
    .local v5, "value":I
    const-string v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 666
    .local v7, "code":I
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x198cbfa1

    if-eq v9, v10, :cond_2

    const v10, 0x23fa18ff

    if-eq v9, v10, :cond_1

    goto :goto_0

    :cond_1
    const-string v9, "VOLUMECONTROL_DATA_VolumeControl_DATA"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v0

    goto :goto_0

    :cond_2
    const-string v9, "VOLUMEPANEL_DATA_VolumePanel_DATA"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v6

    :cond_3
    :goto_0
    packed-switch v8, :pswitch_data_0

    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "payload":Lorg/json/JSONObject;
    .end local v5    # "value":I
    .end local v7    # "code":I
    goto :goto_1

    .line 679
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local v2    # "domain":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "payload":Lorg/json/JSONObject;
    .restart local v5    # "value":I
    .restart local v7    # "code":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$700()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$2;

    invoke-direct {v9, p0, v7, v5}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    goto :goto_1

    .line 668
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$700()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;

    invoke-direct {v9, p0, v7, v5}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$7;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    nop

    .line 697
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "payload":Lorg/json/JSONObject;
    .end local v5    # "value":I
    .end local v7    # "code":I
    :cond_4
    :goto_1
    nop

    .line 698
    return v6

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 694
    const-string v2, "StatusBarForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
