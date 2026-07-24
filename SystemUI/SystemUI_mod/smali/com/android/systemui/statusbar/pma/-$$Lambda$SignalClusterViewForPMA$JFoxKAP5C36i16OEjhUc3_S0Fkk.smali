.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;->f$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;->f$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$SignalClusterViewForPMA$JFoxKAP5C36i16OEjhUc3_S0Fkk;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->lambda$onWifiAPStateChange$3(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V

    return-void
.end method
