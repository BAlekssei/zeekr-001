.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;->f$1:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$updateBatteryColor$187(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V

    return-void
.end method
