.class final Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->parseDeepLink(Landroid/app/Activity;ZLcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

.field final synthetic val$isSaveDeepLinkInfo:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$isSaveDeepLinkInfo:Z

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$callback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;Ljava/lang/String;ZJ)V
    .locals 1
    .param p1, "deepLinkStatus"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .param p4, "duration"    # J

    .line 163
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$isSaveDeepLinkInfo:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->saveDeepLinkInfo(Landroid/content/Context;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$callback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;->SENSORSDATA:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;->val$callback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;->onReceive(Ljava/lang/String;ZJ)V

    .line 169
    :cond_1
    return-void
.end method
