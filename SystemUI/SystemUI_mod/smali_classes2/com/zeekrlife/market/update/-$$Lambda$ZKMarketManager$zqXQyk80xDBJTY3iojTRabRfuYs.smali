.class public final synthetic Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;


# instance fields
.field private final synthetic f$0:Lcom/zeekrlife/market/update/ZKMarketManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/zeekrlife/market/update/ZKMarketManager;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;->f$0:Lcom/zeekrlife/market/update/ZKMarketManager;

    iput-object p2, p0, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;->f$2:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;

    return-void
.end method


# virtual methods
.method public final onInit(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;->f$0:Lcom/zeekrlife/market/update/ZKMarketManager;

    iget-object v1, p0, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;->f$2:Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->lambda$checkAppAvailableVersion$1(Lcom/zeekrlife/market/update/ZKMarketManager;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;Z)V

    return-void
.end method
