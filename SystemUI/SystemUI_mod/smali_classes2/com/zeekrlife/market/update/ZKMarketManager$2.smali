.class Lcom/zeekrlife/market/update/ZKMarketManager$2;
.super Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;
.source "ZKMarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeekrlife/market/update/ZKMarketManager;->lambda$checkAppAvailableVersion$1(Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeekrlife/market/update/ZKMarketManager;

.field final synthetic val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;


# direct methods
.method constructor <init>(Lcom/zeekrlife/market/update/ZKMarketManager;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeekrlife/market/update/ZKMarketManager;

    .line 492
    iput-object p1, p0, Lcom/zeekrlife/market/update/ZKMarketManager$2;->this$0:Lcom/zeekrlife/market/update/ZKMarketManager;

    iput-object p2, p0, Lcom/zeekrlife/market/update/ZKMarketManager$2;->val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;

    invoke-direct {p0}, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppAvailableVersion(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .locals 3
    .param p1, "hasAvailableVersion"    # Z
    .param p2, "appInfo"    # Lcom/zeekrlife/market/update/IAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager$2;->val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;

    if-eqz v0, :cond_1

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "aInfo":Lcom/zeekrlife/market/update/AppInfo;
    if-eqz p2, :cond_0

    .line 498
    new-instance v1, Lcom/zeekrlife/market/update/AppInfo;

    invoke-direct {v1}, Lcom/zeekrlife/market/update/AppInfo;-><init>()V

    move-object v0, v1

    .line 499
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 500
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 501
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 502
    iget-wide v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->versionCode:J

    invoke-virtual {v0, v1, v2}, Lcom/zeekrlife/market/update/AppInfo;->setVersionCode(J)V

    .line 503
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->appDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setAppDescription(Ljava/lang/String;)V

    .line 504
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->updateDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setUpdateDesc(Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/zeekrlife/market/update/ZKMarketManager$2;->val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;

    invoke-interface {v1, p1, v0}, Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;->onAppAvailableVersion(ZLcom/zeekrlife/market/update/AppInfo;)Z

    move-result v1

    return v1

    .line 508
    .end local v0    # "aInfo":Lcom/zeekrlife/market/update/AppInfo;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
