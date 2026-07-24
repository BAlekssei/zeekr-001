.class final Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->disableSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isFromObserver:Z

.field final synthetic val$sensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;


# direct methods
.method constructor <init>(ZLcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;->val$isFromObserver:Z

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;->val$sensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;->val$isFromObserver:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;->val$sensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    const-string v1, "$AppDataTrackingClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 194
    :cond_0
    return-void
.end method
