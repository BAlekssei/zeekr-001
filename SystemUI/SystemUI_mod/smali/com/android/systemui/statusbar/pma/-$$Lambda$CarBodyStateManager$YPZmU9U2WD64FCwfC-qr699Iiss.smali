.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;->f$1:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$setDriverHeatShiftInternal$15(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method
