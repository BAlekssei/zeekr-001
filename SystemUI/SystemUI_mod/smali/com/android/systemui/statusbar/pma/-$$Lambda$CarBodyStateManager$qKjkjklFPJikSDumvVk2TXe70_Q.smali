.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;->f$1:I

    iput p3, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;->f$2:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;->f$1:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$setCarDoorStatus$109(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;IILio/reactivex/CompletableEmitter;)V

    return-void
.end method
