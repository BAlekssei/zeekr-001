.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$cCCnOlaAP_EUJX_omB06rC4oE84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$cCCnOlaAP_EUJX_omB06rC4oE84;->f$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$cCCnOlaAP_EUJX_omB06rC4oE84;->f$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->lambda$onESIMSignalStrengthChange$5(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V

    return-void
.end method
