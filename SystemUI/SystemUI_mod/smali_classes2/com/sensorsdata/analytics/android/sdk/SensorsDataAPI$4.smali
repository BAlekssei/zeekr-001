.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$4;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->resetAnonymousId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1102
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$4;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$4;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->resetAnonymousId()V

    .line 1106
    return-void
.end method
