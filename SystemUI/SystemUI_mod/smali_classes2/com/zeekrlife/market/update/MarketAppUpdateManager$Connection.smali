.class public Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;
.super Ljava/lang/Object;
.source "MarketAppUpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/MarketAppUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field private final onInitCallback:Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;

.field final synthetic this$0:Lcom/zeekrlife/market/update/MarketAppUpdateManager;


# direct methods
.method public constructor <init>(Lcom/zeekrlife/market/update/MarketAppUpdateManager;Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeekrlife/market/update/MarketAppUpdateManager;
    .param p2, "onInitCallback"    # Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;

    .line 63
    iput-object p1, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->onInitCallback:Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;

    .line 65
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 69
    const-string v0, "AppUpdateManager"

    const-string v1, "AppCheckUpdateService connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    invoke-static {p2}, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/update/IAppCheckUpdater;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->access$002(Lcom/zeekrlife/market/update/MarketAppUpdateManager;Lcom/zeekrlife/market/update/IAppCheckUpdater;)Lcom/zeekrlife/market/update/IAppCheckUpdater;

    .line 73
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->onInitCallback:Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->access$000(Lcom/zeekrlife/market/update/MarketAppUpdateManager;)Lcom/zeekrlife/market/update/IAppCheckUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->onInitCallback:Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;

    invoke-interface {v1, v0}, Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;->onInit(Z)V

    .line 77
    .end local v0    # "result":Z
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 81
    const-string v0, "AppUpdateManager"

    const-string v1, "AppCheckUpdateService disconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->access$002(Lcom/zeekrlife/market/update/MarketAppUpdateManager;Lcom/zeekrlife/market/update/IAppCheckUpdater;)Lcom/zeekrlife/market/update/IAppCheckUpdater;

    .line 83
    return-void
.end method
