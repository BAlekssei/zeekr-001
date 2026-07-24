.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$setAcPowerState$6(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZLio/reactivex/CompletableEmitter;)V

    return-void
.end method
