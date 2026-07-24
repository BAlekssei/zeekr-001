.class Lcom/zeekrlife/market/update/ZKMarketManager$1;
.super Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;
.source "ZKMarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeekrlife/market/update/ZKMarketManager;->lambda$checkAppUpdate$0(Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeekrlife/market/update/ZKMarketManager;

.field final synthetic val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;


# direct methods
.method constructor <init>(Lcom/zeekrlife/market/update/ZKMarketManager;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeekrlife/market/update/ZKMarketManager;

    .line 456
    iput-object p1, p0, Lcom/zeekrlife/market/update/ZKMarketManager$1;->this$0:Lcom/zeekrlife/market/update/ZKMarketManager;

    iput-object p2, p0, Lcom/zeekrlife/market/update/ZKMarketManager$1;->val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;

    invoke-direct {p0}, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppUpdate(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .locals 3
    .param p1, "update"    # Z
    .param p2, "appInfo"    # Lcom/zeekrlife/market/update/IAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager$1;->val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;

    if-eqz v0, :cond_1

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "aInfo":Lcom/zeekrlife/market/update/AppInfo;
    if-eqz p2, :cond_0

    .line 462
    new-instance v1, Lcom/zeekrlife/market/update/AppInfo;

    invoke-direct {v1}, Lcom/zeekrlife/market/update/AppInfo;-><init>()V

    move-object v0, v1

    .line 463
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 464
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 465
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 466
    iget-wide v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->versionCode:J

    invoke-virtual {v0, v1, v2}, Lcom/zeekrlife/market/update/AppInfo;->setVersionCode(J)V

    .line 467
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->appDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setAppDescription(Ljava/lang/String;)V

    .line 468
    iget-object v1, p2, Lcom/zeekrlife/market/update/IAppInfo;->updateDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppInfo;->setUpdateDesc(Ljava/lang/String;)V

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/zeekrlife/market/update/ZKMarketManager$1;->val$callback:Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;

    invoke-interface {v1, p1, v0}, Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;->onAppUpdate(ZLcom/zeekrlife/market/update/AppInfo;)Z

    move-result v1

    return v1

    .line 472
    .end local v0    # "aInfo":Lcom/zeekrlife/market/update/AppInfo;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
