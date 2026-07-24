.class public final synthetic Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;->f$2:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;->f$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;->f$1:Z

    iget v2, p0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lambda$getDriverHeatShift$127(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/ObservableEmitter;)V

    return-void
.end method
