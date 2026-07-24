.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MIqmMt6R6k7-_3EmbDL09j5Neyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MIqmMt6R6k7-_3EmbDL09j5Neyg;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MIqmMt6R6k7-_3EmbDL09j5Neyg;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updatePassengerHeatOrVentilationShift$119(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Integer;)V

    return-void
.end method
