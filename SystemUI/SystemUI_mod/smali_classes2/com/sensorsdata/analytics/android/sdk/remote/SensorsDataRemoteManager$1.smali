.class Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;
.super Landroid/os/CountDownTimer;
.source "SensorsDataRemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

.field final synthetic val$enableConfigV:Z


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;JJZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 159
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

    iput-boolean p6, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->val$enableConfigV:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 201
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "l"    # J

    .line 162
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->val$enableConfigV:Z

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1$1;

    invoke-direct {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(ZLcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;)V

    .line 197
    return-void
.end method
